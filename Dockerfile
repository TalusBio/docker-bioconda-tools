FROM mambaorg/micromamba:0.18.2
COPY --chown=micromamba:micromamba env.yaml /tmp/env.yaml
USER root
RUN  apt-get update && \
     apt-get install procps -y && \
     apt-get clean

USER micromamba
RUN micromamba install -y -n base -f /tmp/env.yaml && \
    micromamba clean --all --yes
