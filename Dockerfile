FROM mambaorg/micromamba:0.18.2
COPY --chown=micromamba:micromamba env.yaml /tmp/env.yaml

RUN micromamba install -y -n base -f /tmp/env.yaml && \
    micromamba clean --all --yes
