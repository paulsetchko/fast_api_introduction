SHELL := /bin/bash

.PHONY: install
install:
	poetry install --only main --no-root

.PHONY: install-dev
	poetry install
	poetry run pre-commit install --install-hooks --hook-type pre-commit --hook-type prepare-commit-msg
