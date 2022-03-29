# `rules_pycross` - Python + cross platform

A proof-of-concept ruleset to (hopefully) improve cross-platform Python builds with Bazel.

### Features:

- A single lock file for all target platforms, thanks to Poetry
- Builds that happen in build actions, not during WORKSPACE initialization
- Standard Bazel `http_file` rules used for fetching dependencies. `pip` is not a build-time dependency.

See the [example](example).

### Why?

The current Bazel [rules](https://github.com/bazelbuild/rules_python) for working with Python external dependencies
have a couple of issues that make cross-platform usage difficult (see https://github.com/bazelbuild/rules_python/issues/260):
- they're based on `pip` and `pip-compile` which do not generate cross-platform lock files. For example, IPython depends
  on `appnope` only on MacOS. Lock files generated by `pip-compile` will differ based on whether they're created on Linux
  or MacOS.
- They use `pip install` during the WORKSPACE phase to fetch and possibly build packages (including native libraries),
  which lacks many of the things that Bazel's build actions provide such as sandboxing and remote execution.

### How?

A `pip install` operation can be roughly broken down into these parts:

1. determine the environment (OS and Python version/implementation)
2. resolve the dependencies of the package to install, some of which may be platform-specific
   (optionally constrained by a pre-compiled lock file)
3. figure out which files to download - either pre-built wheels matching the current platform or sdists to built locally
4. download and sdists and wheels
5. build and install sdists, and install wheels

`rules_pycross` attemps to deconstruct this operation into its constituent parts and glue them together with Bazel:

1. `pycross_target_environment` is used to specify target environments ahead-of-time provided with ABI, platform,
   and implementation parameters (similar to pip's `--abi`, `--platform`, and `--implementation` flags). These
   environments are selected using Bazel's own platform/constraint system.
2. `pycross_lock_file` generates a "lock" `.bzl` file from an input `poetry.lock`. This `.bzl` file contains a mix of
   `http_file` repositories and `pycross_*` targets.
3. `pycross_wheel_build` builds `sdist.tar.gz` archives into Python wheels. This is a build action, not a WORKSPACE
   event.
4. `pycross_wheel_library` "installs" (extracts) a Python wheel - either downloaded or built from an sdist - and
   provides it as a `py_library`.
