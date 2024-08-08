.PHONY: dependencies build up down migrate createsuperuser

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

migrate:
	docker exec -it gol-django-1 bash -c "python manage.py migrate"

createsuperuser:
	docker exec -it gol-django-1 python manage.py createsuperuser