FROM python:3.8 as python-betterproto-builder

# install git
RUN apt update -y && \
    apt install -y \
    git

# install poetry
ENV POETRY_HOME="/opt/poetry" \
    POETRY_VIRTUALENVS_IN_PROJECT=true \
    POETRY_NO_INTERACTION=1
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
ENV PATH="$POETRY_HOME/bin:$PATH"

# build python-betterproto wheel
WORKDIR /build
RUN git clone https://github.com/danielgtaylor/python-betterproto.git
WORKDIR /build/python-betterproto
RUN git checkout 59f5f88c0d5f21cfeb819399c3f72634e8422fe6 && \
    poetry build && \
    mv ./dist/betterproto-2.0.0b2-py3-none-any.whl /build/betterproto-2.0.0b2-py3-none-any.whl


FROM namely/protoc-all as prod

RUN apt update -y && \
    apt install -y \
    git curl unzip \
    python3 python3-pip

RUN pip3 install --upgrade pip

# install buf https://buf.build/
ENV PREFIX="/usr/local"  \
    VERSION="0.36.0"

RUN curl -sSL \
    "https://github.com/bufbuild/buf/releases/download/v${VERSION}/buf-$(uname -s)-$(uname -m).tar.gz" | \
    tar -xvzf - -C "${PREFIX}" --strip-components 1

# install python-betterproto
COPY --from=python-betterproto-builder /build/betterproto-2.0.0b2-py3-none-any.whl /build/betterproto-2.0.0b2-py3-none-any.whl
RUN pip3 install /build/betterproto-2.0.0b2-py3-none-any.whl[compiler]

# Setup for makefile usage
WORKDIR /defs
ENTRYPOINT [ "buf" ]
CMD [ "generate" ]