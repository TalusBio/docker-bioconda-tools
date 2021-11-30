FROM mambaorg/micromamba:0.18.2
COPY --chown=micromamba:micromamba env.yaml /tmp/env.yaml

RUN sudo apt-get update && \
    sudo apt-get install procps -y && \
    sudo apt-get clean

RUN micromamba install -y -n base -f /tmp/env.yaml && \
    micromamba clean --all --yes
