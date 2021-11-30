FROM mambaorg/micromamba:0.18.2
COPY --chown=micromamba:micromamba env.yaml /tmp/env.yaml

RUN apt-get update && \
    apt-get install procps -y && \
    apt-get clean

RUN micromamba install -y -n base -f /tmp/env.yaml && \
    micromamba clean --all --yes
