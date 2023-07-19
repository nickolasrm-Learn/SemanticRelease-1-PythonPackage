# Semantic Release 1 Python Package

## Introduction

[Semantic Release](https://github.com/semantic-release/semantic-release) is a tool that helps you automate the process of versioning and releasing your software through [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/).

If you're already familiar with conventional commits, think about when you commit a new feature, you can use `git commit -m "feat: add new feature"` or when you fix a bug `git commit -m "fix: fix bug"`. If you are only commiting `fix` commit messages it means you are not introducing features to your code, thus you should increment the patch (x.x.0 -> x.x.1) part of your [semantic version](https://semver.org/), while if you are commiting `feat` commit messages it means you are introducing new features to your code, thus you should increment the minor (x.0.x -> x.1.0) part of your semantic version.

At the same time when you commit to your repository you are already documenting the changes you are making to your code, so why not use this information to automate the process of writing releases and changelogs? That is why Semantic Release exists.

## Purpose

This package is an example of how to configure Semantic Release for a Python package.

The features of this package are:

- Automatically versions `__init__.py:__version__` and `[tool.poetry.version]`
- Generate a changelog from commit messages
- Create GitHub releases
- Can be manually triggered to create a prerelease

## Development

You can use the [devcontainer](https://code.visualstudio.com/docs/devcontainers/containers) to have [nodejs](https://nodejs.org/en) (semantic release language) and [python](https://www.python.org/) (package language) preinstalled. After that, just
run `make install` and `make install-semrel` to install the dependencies.

## Important

Files you should look at:

- `.releaserc.json`: Semantic Release configuration
- `.github/workflows/release.yaml`: GitHub Actions workflow to run Semantic Release

You can also look at the repository commits, release and actions to see how it works.

## Useful

This setup uses angular presets for commit messages. You can use [commitizen](https://commitizen-tools.github.io/commitizen/) to help you commiting semantically. If you use VSCode the extension [Visual Studio Code Commitizen Support](https://marketplace.visualstudio.com/items?itemName=KnisterPeter.vscode-commitizen) may be useful.
