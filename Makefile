.PHONY: dependencies build up down migrate createsuperuser

dependencies:
	pip3 install -U pip && pip3 install pip-tools

	pip-compile Docker/backend/requirements/base.in

REQUIREMENTS_FILE = base.txt

build:
	bash scripts/build.sh

up:
	make build
	bash scripts/start.sh

down:
	bash scripts/stop.sh

migrate:
	docker exec -it gol-django-1 bash -c "python manage.py migrate"

createsuperuser:
	docker exec -it gol-django-1 python manage.py createsuperuser
