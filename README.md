# Semantic Release 1 Python Package

This package is an example of how to configure Semantic Release for a Python package.

The features of this package are:

- Automatically versions `__init__.py:__version__` and `[tool.poetry.version]`
- Generate a changelog from commit messages
- Create GitHub releases
- Can be manually triggered to create a prerelease

## Development

You can use the `devcontainer` to have `nodejs` (semantic release language) and `python` (package language) preinstalled. After that, just
run `make install` and `make install-semrel` to install the dependencies.

## Important

Files you should look at:

- `.releaserc.json`: Semantic Release configuration
- `.github/workflows/release.yaml`: GitHub Actions workflow to run Semantic Release

You can also look at the repository commits, release and actions to see how it works.
