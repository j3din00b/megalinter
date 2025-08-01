---
title: phpstan configuration in MegaLinter
description: How to use phpstan (configure, ignore files, ignore errors, help & version documentations) to analyze PHP files
---
<!-- markdownlint-disable MD033 MD041 -->
<!-- @generated by .automation/build.py, please don't update manually -->
# <a href="https://phpstan.org/" target="blank" title="Visit linter Web Site"><img src="https://i.imgur.com/WaRKPlC.png" alt="phpstan" height="100px" class="megalinter-logo"></a>phpstan
[![GitHub stars](https://img.shields.io/github/stars/phpstan/phpstan?cacheSeconds=3600)](https://github.com/phpstan/phpstan) ![sarif](https://shields.io/badge/-SARIF-orange) [![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/phpstan/phpstan?sort=semver)](https://github.com/phpstan/phpstan/releases) [![GitHub last commit](https://img.shields.io/github/last-commit/phpstan/phpstan)](https://github.com/phpstan/phpstan/commits) [![GitHub commit activity](https://img.shields.io/github/commit-activity/y/phpstan/phpstan)](https://github.com/phpstan/phpstan/graphs/commit-activity/) [![GitHub contributors](https://img.shields.io/github/contributors/phpstan/phpstan)](https://github.com/phpstan/phpstan/graphs/contributors/)

**PHPStan** is a comprehensive static analysis tool for PHP that focuses on finding errors in your code without executing it. It catches whole classes of bugs even before you write tests, providing deep code analysis and type safety for PHP applications.

**Key Features:**

- **Advanced Type Analysis**: Deep understanding of PHP types with support for generics, intersection types, and complex type relationships
- **Zero-Configuration Start**: Works out of the box with sensible defaults, no configuration files required initially
- **Incremental Analysis**: Smart caching and incremental checking for fast analysis of large codebases
- **10 Strictness Levels**: Configurable analysis levels from basic checks to extremely strict type safety enforcement
- **Framework Integration**: Built-in support for Symfony, Laravel, Doctrine, PHPUnit, and other popular PHP frameworks
- **Custom Rules**: Extensible architecture supporting custom rules and organization-specific analysis requirements
- **Baseline Support**: Generate baselines to introduce PHPStan gradually into existing projects without fixing all issues
- **Memory Efficient**: Optimized for large codebases with intelligent memory management and parallel processing

## phpstan documentation

- Version in MegaLinter: **2.1.21**
- Visit [Official Web Site](https://phpstan.org/){target=_blank}
- See [How to configure phpstan rules](https://phpstan.org/config-reference#neon-format){target=_blank}
  - If custom `phpstan.neon.dist` config file isn't found, [phpstan.neon.dist](https://github.com/oxsecurity/megalinter/tree/main/TEMPLATES/phpstan.neon.dist){target=_blank} will be used
- See [How to disable phpstan rules in files](https://phpstan.org/user-guide/ignoring-errors#ignoring-in-code-using-phpdocs){target=_blank}

[![phpstan - GitHub](https://gh-card.dev/repos/phpstan/phpstan.svg?fullname=)](https://github.com/phpstan/phpstan){target=_blank}

## Configuration in MegaLinter

- Enable phpstan by adding `PHP_PHPSTAN` in [ENABLE_LINTERS variable](https://megalinter.io/beta/configuration/#activation-and-deactivation)
- Disable phpstan by adding `PHP_PHPSTAN` in [DISABLE_LINTERS variable](https://megalinter.io/beta/configuration/#activation-and-deactivation)

| Variable                                | Description                                                                                                                                                                                                         | Default value                                   |
|-----------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------|
| PHP_PHPSTAN_ARGUMENTS                   | User custom arguments to add in linter CLI call<br/>Ex: `-s --foo "bar"`                                                                                                                                            |                                                 |
| PHP_PHPSTAN_COMMAND_REMOVE_ARGUMENTS    | User custom arguments to remove from command line before calling the linter<br/>Ex: `-s --foo "bar"`                                                                                                                |                                                 |
| PHP_PHPSTAN_FILTER_REGEX_INCLUDE        | Custom regex including filter<br/>Ex: `(src\|lib)`                                                                                                                                                                  | Include every file                              |
| PHP_PHPSTAN_FILTER_REGEX_EXCLUDE        | Custom regex excluding filter<br/>Ex: `(test\|examples)`                                                                                                                                                            | Exclude no file                                 |
| PHP_PHPSTAN_CLI_LINT_MODE               | Override default CLI lint mode<br/>- `file`: Calls the linter for each file<br/>- `list_of_files`: Call the linter with the list of files as argument<br/>- `project`: Call the linter from the root of the project | `list_of_files`                                 |
| PHP_PHPSTAN_FILE_EXTENSIONS             | Allowed file extensions. `"*"` matches any extension, `""` matches empty extension. Empty list excludes all files<br/>Ex: `[".py", ""]`                                                                             | `[".php"]`                                      |
| PHP_PHPSTAN_FILE_NAMES_REGEX            | File name regex filters. Regular expression list for filtering files by their base names using regex full match. Empty list includes all files<br/>Ex: `["Dockerfile(-.+)?", "Jenkinsfile"]`                        | Include every file                              |
| PHP_PHPSTAN_PRE_COMMANDS                | List of bash commands to run before the linter                                                                                                                                                                      | None                                            |
| PHP_PHPSTAN_POST_COMMANDS               | List of bash commands to run after the linter                                                                                                                                                                       | None                                            |
| PHP_PHPSTAN_UNSECURED_ENV_VARIABLES     | List of env variables explicitly not filtered before calling PHP_PHPSTAN and its pre/post commands                                                                                                                  | None                                            |
| PHP_PHPSTAN_CONFIG_FILE                 | phpstan configuration file name</br>Use `LINTER_DEFAULT` to let the linter find it                                                                                                                                  | `phpstan.neon.dist`                             |
| PHP_PHPSTAN_RULES_PATH                  | Path where to find linter configuration file                                                                                                                                                                        | Workspace folder, then MegaLinter default rules |
| PHP_PHPSTAN_DISABLE_ERRORS              | Run linter but consider errors as warnings                                                                                                                                                                          | `false`                                         |
| PHP_PHPSTAN_DISABLE_ERRORS_IF_LESS_THAN | Maximum number of errors allowed                                                                                                                                                                                    | `0`                                             |
| PHP_PHPSTAN_CLI_EXECUTABLE              | Override CLI executable                                                                                                                                                                                             | `['phpstan']`                                   |

## MegaLinter Flavors

This linter is available in the following flavors

|                                                                         <!-- -->                                                                         | Flavor                                                 | Description                                     | Embedded linters |                                                                                                                                                                                       Info |
|:--------------------------------------------------------------------------------------------------------------------------------------------------------:|:-------------------------------------------------------|:------------------------------------------------|:----------------:|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
| <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/images/mega-linter-square.png" alt="" height="32px" class="megalinter-icon"></a> | [all](https://megalinter.io/beta/supported-linters/)   | Default MegaLinter Flavor                       |       126        |                 ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter/beta) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter) |
|       <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/cupcake.ico" alt="" height="32px" class="megalinter-icon"></a>       | [cupcake](https://megalinter.io/beta/flavors/cupcake/) | MegaLinter for the most commonly used languages |        87        | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter-cupcake/beta) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter-cupcake) |
|         <img src="https://github.com/oxsecurity/megalinter/raw/main/docs/assets/icons/php.ico" alt="" height="32px" class="megalinter-icon"></a>         | [php](https://megalinter.io/beta/flavors/php/)         | Optimized for PHP based projects                |        54        |         ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/oxsecurity/megalinter-php/beta) ![Docker Pulls](https://img.shields.io/docker/pulls/oxsecurity/megalinter-php) |

## Behind the scenes

### How are identified applicable files

- File extensions: `.php`

<!-- markdownlint-disable -->
<!-- /* cSpell:disable */ -->
### How the linting is performed

- phpstan is called once with the list of files as arguments (`list_of_files` CLI lint mode)

### Example calls

```shell
phpstan analyse --no-progress --no-ansi myfile.php
```

```shell
phpstan analyse --no-progress --no-ansi -c phpstan.neon myfile.php
```

```shell
phpstan analyse --no-progress --no-ansi myfile1.php myfile2.php
```

```shell
phpstan analyse --no-progress --no-ansi mydir1/ mydir2/ myfile.php
```


### Help content

```shell
Description:
  Analyses source code

Usage:
  analyse [options] [--] [<paths>...]
  analyze

Arguments:
  paths                                        Paths with source code to run analysis on

Options:
  -c, --configuration=CONFIGURATION            Path to project configuration file
  -l, --level=LEVEL                            Level of rule options - the higher the stricter
      --no-progress                            Do not show progress bar, only results
      --debug                                  Show debug information - which file is analysed, do not catch internal errors
  -a, --autoload-file=AUTOLOAD-FILE            Project's additional autoload file path
      --error-format=ERROR-FORMAT              Format in which to print the result of the analysis
  -b, --generate-baseline[=GENERATE-BASELINE]  Path to a file where the baseline should be saved [default: false]
      --allow-empty-baseline                   Do not error out when the generated baseline is empty
      --memory-limit=MEMORY-LIMIT              Memory limit for analysis
      --xdebug                                 Allow running with Xdebug for debugging purposes
      --tmp-file=TMP-FILE                      (Editor mode) Edited file used in place of --instead-of file
      --instead-of=INSTEAD-OF                  (Editor mode) File being replaced by --tmp-file
      --fix                                    Fix auto-fixable errors (experimental)
      --watch                                  Launch PHPStan Pro
      --pro                                    Launch PHPStan Pro
      --fail-without-result-cache              Return non-zero exit code when result cache is not used
  -h, --help                                   Display help for the given command. When no command is given display help for the analyse command
  -q, --quiet                                  Do not output any message
  -V, --version                                Display this application version
      --ansi|--no-ansi                         Force (or disable --no-ansi) ANSI output
  -n, --no-interaction                         Do not ask any interactive question
  -v|vv|vvv, --verbose                         Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug
```

### Installation on mega-linter Docker image

- Dockerfile commands :
```dockerfile
# Parent descriptor install
RUN update-alternatives --install /usr/bin/php php /usr/bin/php84 110
COPY --from=composer/composer:2-bin /composer /usr/bin/composer
ENV PATH="/root/.composer/vendor/bin:${PATH}"
ENV PHP_CS_FIXER_IGNORE_ENV=true
# Linter install
# renovate: datasource=packagist depName=phpstan/phpstan
ARG PHP_PHPSTAN_PHPSTAN_VERSION=2.1.21
# renovate: datasource=packagist depName=phpstan/extension-installer
ARG PHP_PHPSTAN_EXTENSION_INSTALLER_VERSION=1.4.3
# renovate: datasource=packagist depName=bartlett/sarif-php-converters
ARG PHP_BARTLETT_SARIF_PHP_CONVERTERS_VERSION=1.2.0
RUN GITHUB_AUTH_TOKEN="$(cat /run/secrets/GITHUB_TOKEN)" && export GITHUB_AUTH_TOKEN && composer config --global allow-plugins.phpstan/extension-installer true && composer global require phpstan/phpstan:${PHP_PHPSTAN_PHPSTAN_VERSION} phpstan/extension-installer:${PHP_PHPSTAN_EXTENSION_INSTALLER_VERSION} bartlett/sarif-php-converters:${PHP_BARTLETT_SARIF_PHP_CONVERTERS_VERSION}
```

