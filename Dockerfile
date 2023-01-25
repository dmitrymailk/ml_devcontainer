FROM nvidia/cuda:12.0.0-base-ubuntu20.04
# git libsqlite3-dev
RUN : \
	&& apt-get update \
	&& DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
	software-properties-common \
	&& add-apt-repository -y ppa:deadsnakes \
	&& DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
	python3.10 python3.10-venv \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* \
	&& :

RUN python3.10 -m venv /venv
ENV PATH=/venv/bin:$PATH

WORKDIR /src

COPY ./requirements.dev.txt /src
RUN --mount=type=cache,target=/root/.cache pip install -r ./requirements.dev.txt
COPY . /src