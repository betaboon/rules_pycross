# This file is generated by rules_pycross.
# It is not intended for manual editing.
"""Pycross-generated dependency targets."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@rules_pycross//pycross:defs.bzl", "pycross_wheel_build", "pycross_wheel_library")

PINS = {
    "appnope": "appnope_0.1.3",
    "asttokens": "asttokens_2.4.1",
    "cython": "cython_0.29.36",
    "decorator": "decorator_5.1.1",
    "exceptiongroup": "exceptiongroup_1.1.3",
    "executing": "executing_2.0.1",
    "ipython": "ipython_8.17.2",
    "jedi": "jedi_0.19.1",
    "matplotlib_inline": "matplotlib_inline_0.1.6",
    "numpy": "numpy_1.23.5",
    "pandas": "pandas_1.5.2",
    "parso": "parso_0.8.3",
    "pexpect": "pexpect_4.8.0",
    "prompt_toolkit": "prompt_toolkit_3.0.39",
    "psycopg2": "psycopg2_2.9.5",
    "ptyprocess": "ptyprocess_0.7.0",
    "pure_eval": "pure_eval_0.2.2",
    "pygments": "pygments_2.16.1",
    "python_dateutil": "python_dateutil_2.8.2",
    "pytz": "pytz_2023.3.post1",
    "setproctitle": "setproctitle_1.3.2",
    "setuptools": "setuptools_59.2.0",
    "six": "six_1.16.0",
    "stack_data": "stack_data_0.6.3",
    "traitlets": "traitlets_5.13.0",
    "wcwidth": "wcwidth_0.2.9",
    "wheel": "wheel_0.37.0",
}

# buildifier: disable=unnamed-macro
def targets():
    """Generated package targets."""

    for pin_name, pin_target in PINS.items():
        native.alias(
            name = pin_name,
            actual = ":" + pin_target,
        )

    native.config_setting(
        name = "_env_python_darwin_arm64",
        constraint_values = [
            "@platforms//os:osx",
            "@platforms//cpu:arm64",
        ],
    )

    native.config_setting(
        name = "_env_python_darwin_x86_64",
        constraint_values = [
            "@platforms//os:osx",
            "@platforms//cpu:x86_64",
        ],
    )

    native.config_setting(
        name = "_env_python_linux_arm64",
        constraint_values = [
            "@platforms//os:linux",
            "@platforms//cpu:arm64",
        ],
    )

    native.config_setting(
        name = "_env_python_linux_x86_64",
        constraint_values = [
            "@platforms//os:linux",
            "@platforms//cpu:x86_64",
        ],
    )

    # buildifier: disable=unused-variable
    _target = select({
        ":_env_python_darwin_arm64": "@rules_pycross_example//:python_darwin_arm64",
        ":_env_python_darwin_x86_64": "@rules_pycross_example//:python_darwin_x86_64",
        ":_env_python_linux_arm64": "@rules_pycross_example//:python_linux_arm64",
        ":_env_python_linux_x86_64": "@rules_pycross_example//:python_linux_x86_64",
    })

    pycross_wheel_library(
        name = "appnope_0.1.3",
        wheel = "@example_lock_wheel_appnope_0.1.3_py2.py3_none_any//file",
    )

    _asttokens_2_4_1_deps = [
        ":six_1.16.0",
    ]

    pycross_wheel_library(
        name = "asttokens_2.4.1",
        deps = _asttokens_2_4_1_deps,
        wheel = "@example_lock_wheel_asttokens_2.4.1_py2.py3_none_any//file",
    )

    pycross_wheel_library(
        name = "cython_0.29.36",
        wheel = select({
            ":_env_python_darwin_arm64": "@example_lock_wheel_cython_0.29.36_py2.py3_none_any//file",
            ":_env_python_darwin_x86_64": "@example_lock_wheel_cython_0.29.36_py2.py3_none_any//file",
            ":_env_python_linux_arm64": "@example_lock_wheel_cython_0.29.36_cp310_cp310_manylinux_2_17_aarch64.manylinux2014_aarch64.manylinux_2_24_aarch64//file",
            ":_env_python_linux_x86_64": "@example_lock_wheel_cython_0.29.36_cp310_cp310_manylinux_2_17_x86_64.manylinux2014_x86_64.manylinux_2_24_x86_64//file",
        }),
    )

    pycross_wheel_library(
        name = "decorator_5.1.1",
        wheel = "@example_lock_wheel_decorator_5.1.1_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "exceptiongroup_1.1.3",
        wheel = "@example_lock_wheel_exceptiongroup_1.1.3_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "executing_2.0.1",
        wheel = "@example_lock_wheel_executing_2.0.1_py2.py3_none_any//file",
    )

    _ipython_8_17_2_deps = [
        ":decorator_5.1.1",
        ":exceptiongroup_1.1.3",
        ":jedi_0.19.1",
        ":matplotlib_inline_0.1.6",
        ":pexpect_4.8.0",
        ":prompt_toolkit_3.0.39",
        ":pygments_2.16.1",
        ":stack_data_0.6.3",
        ":traitlets_5.13.0",
    ] + select({
        ":_env_python_darwin_arm64": [
            ":appnope_0.1.3",
        ],
        ":_env_python_darwin_x86_64": [
            ":appnope_0.1.3",
        ],
        "//conditions:default": [],
    })

    pycross_wheel_library(
        name = "ipython_8.17.2",
        deps = _ipython_8_17_2_deps,
        wheel = "@example_lock_wheel_ipython_8.17.2_py3_none_any//file",
    )

    _jedi_0_19_1_deps = [
        ":parso_0.8.3",
    ]

    pycross_wheel_library(
        name = "jedi_0.19.1",
        deps = _jedi_0_19_1_deps,
        wheel = "@example_lock_wheel_jedi_0.19.1_py2.py3_none_any//file",
    )

    _matplotlib_inline_0_1_6_deps = [
        ":traitlets_5.13.0",
    ]

    pycross_wheel_library(
        name = "matplotlib_inline_0.1.6",
        deps = _matplotlib_inline_0_1_6_deps,
        wheel = "@example_lock_wheel_matplotlib_inline_0.1.6_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "numpy_1.23.5",
        wheel = "@//deps/numpy",
    )

    _pandas_1_5_2_deps = [
        ":numpy_1.23.5",
        ":python_dateutil_2.8.2",
        ":pytz_2023.3.post1",
    ]

    _pandas_1_5_2_build_deps = [
        ":cython_0.29.36",
        ":setuptools_59.2.0",
        ":wheel_0.37.0",
    ]

    pycross_wheel_build(
        name = "_build_pandas_1.5.2",
        sdist = "@example_lock_sdist_pandas_1.5.2//file",
        target_environment = _target,
        deps = _pandas_1_5_2_deps + _pandas_1_5_2_build_deps,
        tags = ["manual"],
    )

    pycross_wheel_library(
        name = "pandas_1.5.2",
        deps = _pandas_1_5_2_deps,
        wheel = ":_build_pandas_1.5.2",
    )

    pycross_wheel_library(
        name = "parso_0.8.3",
        wheel = "@example_lock_wheel_parso_0.8.3_py2.py3_none_any//file",
    )

    _pexpect_4_8_0_deps = [
        ":ptyprocess_0.7.0",
    ]

    pycross_wheel_library(
        name = "pexpect_4.8.0",
        deps = _pexpect_4_8_0_deps,
        wheel = "@example_lock_wheel_pexpect_4.8.0_py2.py3_none_any//file",
    )

    _prompt_toolkit_3_0_39_deps = [
        ":wcwidth_0.2.9",
    ]

    pycross_wheel_library(
        name = "prompt_toolkit_3.0.39",
        deps = _prompt_toolkit_3_0_39_deps,
        wheel = "@example_lock_wheel_prompt_toolkit_3.0.39_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "psycopg2_2.9.5",
        wheel = "@//deps/psycopg2",
    )

    pycross_wheel_library(
        name = "ptyprocess_0.7.0",
        wheel = "@example_lock_wheel_ptyprocess_0.7.0_py2.py3_none_any//file",
    )

    pycross_wheel_library(
        name = "pure_eval_0.2.2",
        wheel = "@example_lock_wheel_pure_eval_0.2.2_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "pygments_2.16.1",
        wheel = "@example_lock_wheel_pygments_2.16.1_py3_none_any//file",
    )

    _python_dateutil_2_8_2_deps = [
        ":six_1.16.0",
    ]

    pycross_wheel_library(
        name = "python_dateutil_2.8.2",
        deps = _python_dateutil_2_8_2_deps,
        wheel = "@example_lock_wheel_python_dateutil_2.8.2_py2.py3_none_any//file",
    )

    pycross_wheel_library(
        name = "pytz_2023.3.post1",
        wheel = "@example_lock_wheel_pytz_2023.3.post1_py2.py3_none_any//file",
    )

    _setproctitle_1_3_2_build_deps = [
        ":setuptools_59.2.0",
        ":wheel_0.37.0",
    ]

    pycross_wheel_build(
        name = "_build_setproctitle_1.3.2",
        sdist = "@example_lock_sdist_setproctitle_1.3.2//file",
        target_environment = _target,
        deps = _setproctitle_1_3_2_build_deps,
        tags = ["manual"],
    )

    pycross_wheel_library(
        name = "setproctitle_1.3.2",
        wheel = ":_build_setproctitle_1.3.2",
    )

    pycross_wheel_library(
        name = "setuptools_59.2.0",
        wheel = "@example_lock_wheel_setuptools_59.2.0_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "six_1.16.0",
        wheel = "@example_lock_wheel_six_1.16.0_py2.py3_none_any//file",
    )

    _stack_data_0_6_3_deps = [
        ":asttokens_2.4.1",
        ":executing_2.0.1",
        ":pure_eval_0.2.2",
    ]

    pycross_wheel_library(
        name = "stack_data_0.6.3",
        deps = _stack_data_0_6_3_deps,
        wheel = "@example_lock_wheel_stack_data_0.6.3_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "traitlets_5.13.0",
        wheel = "@example_lock_wheel_traitlets_5.13.0_py3_none_any//file",
    )

    pycross_wheel_library(
        name = "wcwidth_0.2.9",
        wheel = "@example_lock_wheel_wcwidth_0.2.9_py2.py3_none_any//file",
    )

    pycross_wheel_library(
        name = "wheel_0.37.0",
        wheel = "@example_lock_wheel_wheel_0.37.0_py2.py3_none_any//file",
    )

# buildifier: disable=unnamed-macro
def repositories():
    """Generated package repositories."""

    maybe(
        http_file,
        name = "example_lock_sdist_numpy_1.23.5",
        urls = [
            "https://files.pythonhosted.org/packages/42/38/775b43da55fa7473015eddc9a819571517d9a271a9f8134f68fb9be2f212/numpy-1.23.5.tar.gz",
        ],
        sha256 = "1b1766d6f397c18153d40015ddfc79ddb715cabadc04d2d228d4e5a8bc4ded1a",
        downloaded_file_path = "numpy-1.23.5.tar.gz",
    )

    maybe(
        http_file,
        name = "example_lock_sdist_pandas_1.5.2",
        urls = [
            "https://files.pythonhosted.org/packages/4d/07/c4d69e1acb7723ca49d24fc60a89aa07a914dfb8e7a07fdbb9d8646630cd/pandas-1.5.2.tar.gz",
        ],
        sha256 = "220b98d15cee0b2cd839a6358bd1f273d0356bf964c1a1aeb32d47db0215488b",
        downloaded_file_path = "pandas-1.5.2.tar.gz",
    )

    maybe(
        http_file,
        name = "example_lock_sdist_psycopg2_2.9.5",
        urls = [
            "https://files.pythonhosted.org/packages/89/d6/cd8c46417e0f7a16b4b0fc321f4ab676a59250d08fce5b64921897fb07cc/psycopg2-2.9.5.tar.gz",
        ],
        sha256 = "a5246d2e683a972e2187a8714b5c2cf8156c064629f9a9b1a873c1730d9e245a",
        downloaded_file_path = "psycopg2-2.9.5.tar.gz",
    )

    maybe(
        http_file,
        name = "example_lock_sdist_setproctitle_1.3.2",
        urls = [
            "https://files.pythonhosted.org/packages/b5/47/ac709629ddb9779fee29b7d10ae9580f60a4b37e49bce72360ddf9a79cdc/setproctitle-1.3.2.tar.gz",
        ],
        sha256 = "b9fb97907c830d260fa0658ed58afd48a86b2b88aac521135c352ff7fd3477fd",
        downloaded_file_path = "setproctitle-1.3.2.tar.gz",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_appnope_0.1.3_py2.py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/41/4a/381783f26df413dde4c70c734163d88ca0550a1361cb74a1c68f47550619/appnope-0.1.3-py2.py3-none-any.whl",
        ],
        sha256 = "265a455292d0bd8a72453494fa24df5a11eb18373a60c7c0430889f22548605e",
        downloaded_file_path = "appnope-0.1.3-py2.py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_asttokens_2.4.1_py2.py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/45/86/4736ac618d82a20d87d2f92ae19441ebc7ac9e7a581d7e58bbe79233b24a/asttokens-2.4.1-py2.py3-none-any.whl",
        ],
        sha256 = "051ed49c3dcae8913ea7cd08e46a606dba30b79993209636c4875bc1d637bc24",
        downloaded_file_path = "asttokens-2.4.1-py2.py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_cython_0.29.36_cp310_cp310_manylinux_2_17_aarch64.manylinux2014_aarch64.manylinux_2_24_aarch64",
        urls = [
            "https://files.pythonhosted.org/packages/48/93/a3a183e87a6f9442bd05adc84282d4b156b1246310f9a15729c4783640eb/Cython-0.29.36-cp310-cp310-manylinux_2_17_aarch64.manylinux2014_aarch64.manylinux_2_24_aarch64.whl",
        ],
        sha256 = "7cb44aeaf6c5c25bd6a7562ece4eadf50d606fc9b5f624fa95bd0281e8bf0a97",
        downloaded_file_path = "Cython-0.29.36-cp310-cp310-manylinux_2_17_aarch64.manylinux2014_aarch64.manylinux_2_24_aarch64.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_cython_0.29.36_cp310_cp310_manylinux_2_17_x86_64.manylinux2014_x86_64.manylinux_2_24_x86_64",
        urls = [
            "https://files.pythonhosted.org/packages/f8/26/ca0f1bb049b83c25cafa39f3fa5287c826a6ab36e665c906209e07f4deac/Cython-0.29.36-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.manylinux_2_24_x86_64.whl",
        ],
        sha256 = "28fb10aabd56a2e4d399273b48e106abe5a0d271728fd5eed3d36e7171000045",
        downloaded_file_path = "Cython-0.29.36-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.manylinux_2_24_x86_64.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_cython_0.29.36_py2.py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/3f/d6/9eed523aeaca42acbaa3e6d3850edae780dc7f8da9df1bf6a2ceb851839c/Cython-0.29.36-py2.py3-none-any.whl",
        ],
        sha256 = "95bb13d8be507425d03ebe051f90d4b2a9fdccc64e4f30b35645fdb7542742eb",
        downloaded_file_path = "Cython-0.29.36-py2.py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_decorator_5.1.1_py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/d5/50/83c593b07763e1161326b3b8c6686f0f4b0f24d5526546bee538c89837d6/decorator-5.1.1-py3-none-any.whl",
        ],
        sha256 = "b8c3f85900b9dc423225913c5aace94729fe1fa9763b38939a95226f02d37186",
        downloaded_file_path = "decorator-5.1.1-py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_exceptiongroup_1.1.3_py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/ad/83/b71e58666f156a39fb29417e4c8ca4bc7400c0dd4ed9e8842ab54dc8c344/exceptiongroup-1.1.3-py3-none-any.whl",
        ],
        sha256 = "343280667a4585d195ca1cf9cef84a4e178c4b6cf2274caef9859782b567d5e3",
        downloaded_file_path = "exceptiongroup-1.1.3-py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_executing_2.0.1_py2.py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/80/03/6ea8b1b2a5ab40a7a60dc464d3daa7aa546e0a74d74a9f8ff551ea7905db/executing-2.0.1-py2.py3-none-any.whl",
        ],
        sha256 = "eac49ca94516ccc753f9fb5ce82603156e590b27525a8bc32cce8ae302eb61bc",
        downloaded_file_path = "executing-2.0.1-py2.py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_ipython_8.17.2_py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/20/45/18f0dc2cbc3ee6680a004f620fb1400c6511ded0a76a2dd241813786ce73/ipython-8.17.2-py3-none-any.whl",
        ],
        sha256 = "1e4d1d666a023e3c93585ba0d8e962867f7a111af322efff6b9c58062b3e5444",
        downloaded_file_path = "ipython-8.17.2-py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_jedi_0.19.1_py2.py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/20/9f/bc63f0f0737ad7a60800bfd472a4836661adae21f9c2535f3957b1e54ceb/jedi-0.19.1-py2.py3-none-any.whl",
        ],
        sha256 = "e983c654fe5c02867aef4cdfce5a2fbb4a50adc0af145f70504238f18ef5e7e0",
        downloaded_file_path = "jedi-0.19.1-py2.py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_matplotlib_inline_0.1.6_py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/f2/51/c34d7a1d528efaae3d8ddb18ef45a41f284eacf9e514523b191b7d0872cc/matplotlib_inline-0.1.6-py3-none-any.whl",
        ],
        sha256 = "f1f41aab5328aa5aaea9b16d083b128102f8712542f819fe7e6a420ff581b311",
        downloaded_file_path = "matplotlib_inline-0.1.6-py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_parso_0.8.3_py2.py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/05/63/8011bd08a4111858f79d2b09aad86638490d62fbf881c44e434a6dfca87b/parso-0.8.3-py2.py3-none-any.whl",
        ],
        sha256 = "c001d4636cd3aecdaf33cbb40aebb59b094be2a74c556778ef5576c175e19e75",
        downloaded_file_path = "parso-0.8.3-py2.py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_pexpect_4.8.0_py2.py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/39/7b/88dbb785881c28a102619d46423cb853b46dbccc70d3ac362d99773a78ce/pexpect-4.8.0-py2.py3-none-any.whl",
        ],
        sha256 = "0b48a55dcb3c05f3329815901ea4fc1537514d6ba867a152b581d69ae3710937",
        downloaded_file_path = "pexpect-4.8.0-py2.py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_prompt_toolkit_3.0.39_py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/a9/b4/ba77c84edf499877317225d7b7bc047a81f7c2eed9628eeb6bab0ac2e6c9/prompt_toolkit-3.0.39-py3-none-any.whl",
        ],
        sha256 = "9dffbe1d8acf91e3de75f3b544e4842382fc06c6babe903ac9acb74dc6e08d88",
        downloaded_file_path = "prompt_toolkit-3.0.39-py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_ptyprocess_0.7.0_py2.py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/22/a6/858897256d0deac81a172289110f31629fc4cee19b6f01283303e18c8db3/ptyprocess-0.7.0-py2.py3-none-any.whl",
        ],
        sha256 = "4b41f3967fce3af57cc7e94b888626c18bf37a083e3651ca8feeb66d492fef35",
        downloaded_file_path = "ptyprocess-0.7.0-py2.py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_pure_eval_0.2.2_py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/2b/27/77f9d5684e6bce929f5cfe18d6cfbe5133013c06cb2fbf5933670e60761d/pure_eval-0.2.2-py3-none-any.whl",
        ],
        sha256 = "01eaab343580944bc56080ebe0a674b39ec44a945e6d09ba7db3cb8cec289350",
        downloaded_file_path = "pure_eval-0.2.2-py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_pygments_2.16.1_py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/43/88/29adf0b44ba6ac85045e63734ae0997d3c58d8b1a91c914d240828d0d73d/Pygments-2.16.1-py3-none-any.whl",
        ],
        sha256 = "13fc09fa63bc8d8671a6d247e1eb303c4b343eaee81d861f3404db2935653692",
        downloaded_file_path = "Pygments-2.16.1-py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_python_dateutil_2.8.2_py2.py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/36/7a/87837f39d0296e723bb9b62bbb257d0355c7f6128853c78955f57342a56d/python_dateutil-2.8.2-py2.py3-none-any.whl",
        ],
        sha256 = "961d03dc3453ebbc59dbdea9e4e11c5651520a876d0f4db161e8674aae935da9",
        downloaded_file_path = "python_dateutil-2.8.2-py2.py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_pytz_2023.3.post1_py2.py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/32/4d/aaf7eff5deb402fd9a24a1449a8119f00d74ae9c2efa79f8ef9994261fc2/pytz-2023.3.post1-py2.py3-none-any.whl",
        ],
        sha256 = "ce42d816b81b68506614c11e8937d3aa9e41007ceb50bfdcb0749b921bf646c7",
        downloaded_file_path = "pytz-2023.3.post1-py2.py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_setuptools_59.2.0_py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/18/ad/ec41343a49a0371ea40daf37b1ba2c11333cdd121cb378161635d14b9750/setuptools-59.2.0-py3-none-any.whl",
        ],
        sha256 = "4adde3d1e1c89bde1c643c64d89cdd94cbfd8c75252ee459d4500bccb9c7d05d",
        downloaded_file_path = "setuptools-59.2.0-py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_six_1.16.0_py2.py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/d9/5a/e7c31adbe875f2abbb91bd84cf2dc52d792b5a01506781dbcf25c91daf11/six-1.16.0-py2.py3-none-any.whl",
        ],
        sha256 = "8abb2f1d86890a2dfb989f9a77cfcfd3e47c2a354b01111771326f8aa26e0254",
        downloaded_file_path = "six-1.16.0-py2.py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_stack_data_0.6.3_py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/f1/7b/ce1eafaf1a76852e2ec9b22edecf1daa58175c090266e9f6c64afcd81d91/stack_data-0.6.3-py3-none-any.whl",
        ],
        sha256 = "d5558e0c25a4cb0853cddad3d77da9891a08cb85dd9f9f91b9f8cd66e511e695",
        downloaded_file_path = "stack_data-0.6.3-py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_traitlets_5.13.0_py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/ed/fd/cfc0d27ca11f3dd12b2a90d06875d8bfb532ef40ce67be4066d10807f4aa/traitlets-5.13.0-py3-none-any.whl",
        ],
        sha256 = "baf991e61542da48fe8aef8b779a9ea0aa38d8a54166ee250d5af5ecf4486619",
        downloaded_file_path = "traitlets-5.13.0-py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_wcwidth_0.2.9_py2.py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/19/0b/00728863778b14ececfc97e40850fd71529b6a1695907981cc3fdc085ba6/wcwidth-0.2.9-py2.py3-none-any.whl",
        ],
        sha256 = "9a929bd8380f6cd9571a968a9c8f4353ca58d7cd812a4822bba831f8d685b223",
        downloaded_file_path = "wcwidth-0.2.9-py2.py3-none-any.whl",
    )

    maybe(
        http_file,
        name = "example_lock_wheel_wheel_0.37.0_py2.py3_none_any",
        urls = [
            "https://files.pythonhosted.org/packages/04/80/cad93b40262f5d09f6de82adbee452fd43cdff60830b56a74c5930f7e277/wheel-0.37.0-py2.py3-none-any.whl",
        ],
        sha256 = "21014b2bd93c6d0034b6ba5d35e4eb284340e09d63c59aef6fc14b0f346146fd",
        downloaded_file_path = "wheel-0.37.0-py2.py3-none-any.whl",
    )
