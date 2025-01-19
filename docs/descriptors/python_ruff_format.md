---
title: ruff-format configuration in MegaLinter
description: How to use ruff-format (configure, ignore files, ignore errors, help & version documentations) to analyze PYTHON files
---
<!-- markdownlint-disable MD033 MD041 -->
<!-- @generated by .automation/build.py, please don't update manually -->
# ruff-format
[![GitHub stars](https://img.shields.io/github/stars/astral-sh/ruff?cacheSeconds=3600)](https://github.com/astral-sh/ruff) ![formatter](https://shields.io/badge/-format-yellow) [![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/astral-sh/ruff?sort=semver)](https://github.com/astral-sh/ruff/releases) [![GitHub last commit](https://img.shields.io/github/last-commit/astral-sh/ruff)](https://github.com/astral-sh/ruff/commits) [![GitHub commit activity](https://img.shields.io/github/commit-activity/y/astral-sh/ruff)](https://github.com/astral-sh/ruff/graphs/commit-activity/) [![GitHub contributors](https://img.shields.io/github/contributors/astral-sh/ruff)](https://github.com/astral-sh/ruff/graphs/contributors/)

An extremely fast Python linter, written in Rust. Configured for formatting only.

## ruff-format documentation

- Version in MegaLinter: **0.9.2**
- Visit [Official Web Site](https://github.com/astral-sh/ruff#readme){target=_blank}
- See [How to configure ruff-format rules](https://docs.astral.sh/ruff/configuration/){target=_blank}
  - If custom `.ruff.toml` config file isn't found, [.ruff.toml](https://github.com/oxsecurity/megalinter/tree/main/TEMPLATES/.ruff.toml){target=_blank} will be used
- See [How to disable ruff-format rules in files](https://docs.astral.sh/ruff/linter/#error-suppression){target=_blank}
- See [Index of problems detected by ruff-format](https://docs.astral.sh/ruff/rules/){target=_blank}

[![ruff - GitHub](https://gh-card.dev/repos/astral-sh/ruff.svg?fullname=)](https://github.com/astral-sh/ruff){target=_blank}

## Configuration in MegaLinter

- Enable ruff-format by adding `PYTHON_RUFF_FORMAT` in [ENABLE_LINTERS variable](https://megalinter.io/beta/configuration/#activation-and-deactivation)
- Disable ruff-format by adding `PYTHON_RUFF_FORMAT` in [DISABLE_LINTERS variable](https://megalinter.io/beta/configuration/#activation-and-deactivation)

| Variable                                       | Description                                                                                                                                                                                                         | Default value                                   |
|------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------|
| PYTHON_DEFAULT_STYLE                           | For ruff-format to be active, PYTHON_DEFAULT_STYLE must be `ruff`                                                                                                                                                   | `black`                                         |
| PYTHON_RUFF_FORMAT_ARGUMENTS                   | User custom arguments to add in linter CLI call<br/>Ex: `-s --foo "bar"`                                                                                                                                            |                                                 |
| PYTHON_RUFF_FORMAT_COMMAND_REMOVE_ARGUMENTS    | User custom arguments to remove from command line before calling the linter<br/>Ex: `-s --foo "bar"`                                                                                                                |                                                 |
| PYTHON_RUFF_FORMAT_FILTER_REGEX_INCLUDE        | Custom regex including filter<br/>Ex: `(src\|lib)`                                                                                                                                                                  | Include every file                              |
| PYTHON_RUFF_FORMAT_FILTER_REGEX_EXCLUDE        | Custom regex excluding filter<br/>Ex: `(test\|examples)`                                                                                                                                                            | Exclude no file                                 |
| PYTHON_RUFF_FORMAT_CLI_LINT_MODE               | Override default CLI lint mode<br/>- `file`: Calls the linter for each file<br/>- `list_of_files`: Call the linter with the list of files as argument<br/>- `project`: Call the linter from the root of the project | `list_of_files`                                 |
| PYTHON_RUFF_FORMAT_FILE_EXTENSIONS             | Allowed file extensions. `"*"` matches any extension, `""` matches empty extension. Empty list excludes all files<br/>Ex: `[".py", ""]`                                                                             | `[".py"]`                                       |
| PYTHON_RUFF_FORMAT_FILE_NAMES_REGEX            | File name regex filters. Regular expression list for filtering files by their base names using regex full match. Empty list includes all files<br/>Ex: `["Dockerfile(-.+)?", "Jenkinsfile"]`                        | Include every file                              |
| PYTHON_RUFF_FORMAT_PRE_COMMANDS                | List of bash commands to run before the linter                                                                                                                                                                      | None                                            |
| PYTHON_RUFF_FORMAT_POST_COMMANDS               | List of bash commands to run after the linter                                                                                                                                                                       | None                                            |
| PYTHON_RUFF_FORMAT_UNSECURED_ENV_VARIABLES     | List of env variables explicitly not filtered before calling PYTHON_RUFF_FORMAT and its pre/post commands                                                                                                           | None                                            |
| PYTHON_RUFF_FORMAT_CONFIG_FILE                 | ruff-format configuration file name</br>Use `LINTER_DEFAULT` to let the linter find it                                                                                                                              | `.ruff.toml`                                    |
| PYTHON_RUFF_FORMAT_RULES_PATH                  | Path where to find linter configuration file                                                                                                                                                                        | Workspace folder, then MegaLinter default rules |
| PYTHON_RUFF_FORMAT_DISABLE_ERRORS              | Run linter but consider errors as warnings                                                                                                                                                                          | `true`                                          |
| PYTHON_RUFF_FORMAT_DISABLE_ERRORS_IF_LESS_THAN | Maximum number of errors allowed                                                                                                                                                                                    | `0`                                             |
| PYTHON_RUFF_FORMAT_CLI_EXECUTABLE              | Override CLI executable                                                                                                                                                                                             | `['ruff']`                                      |

## IDE Integration

Use ruff-format in your favorite IDE to catch errors before MegaLinter !

|                                                                  <!-- -->                                                                   | IDE                                                      | Extension Name                                                                 |                                                                                 Install                                                                                 |
|:-------------------------------------------------------------------------------------------------------------------------------------------:|----------------------------------------------------------|--------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|  <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/idea.ico" alt="" height="32px" class="megalinter-icon"></a>  | [IDEA](https://www.jetbrains.com/products.html#type=ide) | [Ruff](https://plugins.jetbrains.com/plugin/20574-ruff)                        |                      <iframe frameborder="none" width="245px" height="48px" src="https://plugins.jetbrains.com/embeddable/install/20574"></iframe>                      |
| <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/vscode.ico" alt="" height="32px" class="megalinter-icon"></a> | [Visual Studio Code](https://code.visualstudio.com/)     | [Ruff](https://marketplace.visualstudio.com/items?itemName=charliermarsh.ruff) | [![Install in VSCode](https://github.com/oxsecurity/megalinter/raw/main/docs/assets/images/btn_install_vscode.png)](vscode:extension/charliermarsh.ruff){target=_blank} |

## MegaLinter Flavors

This linter is available in the following flavors

|                                                                         <!-- -->                                                                         | Flavor                                                       | Description                                     | Embedded linters |                                                                                                                                                                                             Info |
|:--------------------------------------------------------------------------------------------------------------------------------------------------------:|:-------------------------------------------------------------|:------------------------------------------------|:----------------:|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/images/mega-linter-square.png" alt="" height="32px" class="megalinter-icon"></a> | [all](https://megalinter.io/beta/supported-linters/)         | Default MegaLinter Flavor                       |       125        |                       ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter/beta) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter) |
|       <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/cupcake.ico" alt="" height="32px" class="megalinter-icon"></a>       | [cupcake](https://megalinter.io/beta/flavors/cupcake/)       | MegaLinter for the most commonly used languages |        85        |       ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter-cupcake/beta) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter-cupcake) |
|     <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/formatters.ico" alt="" height="32px" class="megalinter-icon"></a>      | [formatters](https://megalinter.io/beta/flavors/formatters/) | Contains only formatters                        |        18        | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter-formatters/beta) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter-formatters) |
|       <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/python.ico" alt="" height="32px" class="megalinter-icon"></a>        | [python](https://megalinter.io/beta/flavors/python/)         | Optimized for PYTHON based projects             |        62        |         ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter-python/beta) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter-python) |

## Behind the scenes

### How are identified applicable files

- File extensions: `.py`

<!-- markdownlint-disable -->
<!-- /* cSpell:disable */ -->
### How the linting is performed

- ruff-format is called once with the list of files as arguments (`list_of_files` CLI lint mode)

### Example calls

```shell
ruff format --check myfile.py myfile2.py
```

```shell
ruff format --config .ruff.toml myfile.py myfile2.py
```


### Help content

```shell
Ruff: An extremely fast Python linter and code formatter.

Usage: ruff [OPTIONS] <COMMAND>

Commands:
  check    Run Ruff on the given files or directories
  rule     Explain a rule (or all rules)
  config   List or describe the available configuration options
  linter   List all supported upstream linters
  clean    Clear any caches in the current directory and any subdirectories
  format   Run the Ruff formatter on the given files or directories
  server   Run the language server
  analyze  Run analysis over Python source code
  version  Display Ruff's version
  help     Print this message or the help of the given subcommand(s)

Options:
  -h, --help     Print help
  -V, --version  Print version

Log levels:
  -v, --verbose  Enable verbose logging
  -q, --quiet    Print diagnostics, but nothing else
  -s, --silent   Disable all logging (but still exit with status code "1" upon detecting
                 diagnostics)

Global options:
      --config <CONFIG_OPTION>  Either a path to a TOML configuration file (`pyproject.toml` or
                                `ruff.toml`), or a TOML `<KEY> = <VALUE>` pair (such as you might
                                find in a `ruff.toml` configuration file) overriding a specific
                                configuration option. Overrides of individual settings using this
                                option always take precedence over all configuration files,
                                including configuration files that were also specified using
                                `--config`
      --isolated                Ignore all configuration files

For help with a specific command, see: `ruff help <command>`.
```

### Installation on mega-linter Docker image

- PIP packages (Python):
  - [ruff](https://pypi.org/project/ruff)