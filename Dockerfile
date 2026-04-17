FROM jupyter/minimal-notebook

USER root
RUN apt-get update && apt-get install -y octave
USER $NB_UID
