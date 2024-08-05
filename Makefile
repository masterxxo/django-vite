.PHONY: dependencies

dependencies:
	pip install -U pip && pip install pip-tools

	pip-compile requirements/base.in

REQUIREMENTS_FILE = base.txt