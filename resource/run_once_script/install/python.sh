#!/bin/sh

init_python_environment() {
  pip install --upgrade pip && pip install autopep8 pylint
}

DJANGO_DEV_VENV="$XDG_DATA_HOME/python/virtualenvs/djangodev"

init_python_environment && python -m venv "$DJANGO_DEV_VENV" &&
  . "$DJANGO_DEV_VENV/bin/activate" && init_python_environment &&
  pip install django && deactivate
