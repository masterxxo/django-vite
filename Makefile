.PHONY: update-deps build up down attach bash shell migrate migrate-zero migrations collectstatic permissions run-build run tests test circleci-up circleci-tests


dependencies:
    pip install -U pip && pip install pip-tools

    pip-compile requirements/base.in

REQUIREMENTS_FILE = base.txt