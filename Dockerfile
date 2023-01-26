FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-runtime

WORKDIR /src

COPY ./requirements.dev.txt /src
RUN --mount=type=cache,target=/root/.cache pip install -r ./requirements.dev.txt
COPY . /src