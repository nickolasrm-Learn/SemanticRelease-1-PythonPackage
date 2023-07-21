help:  ## Show this help.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

install:  ## Install dependencies.
	pip install poetry
	poetry install

install-semrel:  ## Install semantic release dependencies.
	npm install -g semantic-release@21.0.7 \
 		semantic-release-replace-plugin@1.2.6 \
   		@semantic-release/changelog@6.0.3 \
     	@semantic-release/exec@6.0.3 \
      	@semantic-release/git@10.0.1 \
       	@semantic-release/github@9.0.4 \
		conventional-changelog-conventionalcommits@6.1.0

build:  ## Build the package.
	poetry build

test:  ## Run tests.
	poetry run pytest
