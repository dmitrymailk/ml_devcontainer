FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-runtime

WORKDIR /src
COPY . /src
RUN --mount=type=cache,target=/root/.cache pip install -r /src/benchmark_scripts/huggingface_glue/requirements.txt
