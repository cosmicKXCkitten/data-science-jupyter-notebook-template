FROM jupyter/scipy-notebook:latest

WORKDIR /jupyter

# RUN apt-get update && apt-get upgrade

COPY pyproject.toml pyproject.toml
COPY ./src/ ./src/

RUN pip install -e .

ENTRYPOINT [ "jupyter-notebook" ]
