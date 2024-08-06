.PHONY: dependencies build up down

dependencies:
	pip install -U pip && pip install pip-tools

	pip-compile Docker/backend/requirements/base.in

REQUIREMENTS_FILE = base.txt

build:
	bash scripts/build.sh

up:
	bash gol/scripts/start.sh

down:
	docker compose down