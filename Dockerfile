FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-runtime

WORKDIR /src
COPY ./requirements.base.txt /src/requirements.base.txt
RUN --mount=type=cache,target=/root/.cache pip install -r /src/requirements.base.txt

COPY . /src
RUN --mount=type=cache,target=/root/.cache pip install -r /src/ml_devcontainer/benchmark_scripts/huggingface_glue/requirements.txt
