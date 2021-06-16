# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM gitlab-registry.nautilus.optiputer.net/prp/jupyter-stack/tensorflow:latest

LABEL maintainer="Javier Duarte <jduarte@ucsd.edu>"

# Install Tensorflow
RUN pip install --quiet --no-cache-dir \
    pytables \
    pandas \
    h5py \
    tqdm \
    scikit-learn \
    setGPU \
    mplhep \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
