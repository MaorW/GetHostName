FROM --platform=$BUILDPLATFORM python:3.10.11-slim AS builder
WORKDIR /app

COPY . .
RUN --mount=type=cache,target=/root/.cache/pip \
    pip3 install -r requirements.txt

CMD ["python" , "app.py"]