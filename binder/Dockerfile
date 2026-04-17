FROM jupyter/minimal-notebook

USER root

RUN apt-get update && \
    apt-get install -y octave && \
    pip install octave_kernel && \
    python -m octave_kernel.install && \
    apt-get clean

USER $NB_UID
