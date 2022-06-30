#!/bin/sh

pip install --upgrade pip && pip install autopep8 pylint &&
  curl -sSL https://install.python-poetry.org | python3 -
