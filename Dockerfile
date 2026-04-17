FROM jupyter/minimal-notebook

USER root
RUN apt-get update && apt-get install -y \
    octave \
    && rm -rf /var/lib/apt/lists/*

# Installer le kernel Octave pour Jupyter
RUN pip install octave_kernel && \
    python -m octave_kernel.install

USER $NB_UID
