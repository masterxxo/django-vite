.PHONY: dependencies

dependencies:
	pip install -U pip && pip install pip-tools

	pip-compile Docker/backend/requirements/base.in

REQUIREMENTS_FILE = base.txt