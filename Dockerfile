FROM jupyter/jupyter/scipy-notebook:latest

WORKDIR /jupyter

RUN apt-get update && apt-get upgrade

ENTRYPOINT [ "jupyter-notebook" ]
