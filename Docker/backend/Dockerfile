FROM python:3.11-slim-bullseye

# Install linux packages
RUN apt-get update && apt-get install --no-install-recommends -y \
  build-essential \
  git

WORKDIR /app

ENV \
  PYTHONUNBUFFERED=1 \
  PYTHONDONTWRITEBYTECODE=1 \
  PIP_NO_CACHE_DIR=off \
  PIP_DISABLE_PIP_VERSION_CHECK=on \
  PIP_DEFAULT_TIMEOUT=100

ADD ./requirements/base.txt /app/base.txt

RUN pip install -r base.txt

SHELL ["/bin/bash", "-c"]
CMD python manage.py runserver 0.0.0.0:8000
