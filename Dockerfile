FROM python:3.10-slim

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    bash \
    && rm -rf /var/lib/apt/lists/*

RUN pip install rasa transformers

WORKDIR /app/rasa

CMD ["/usr/local/bin/rasa", "run", "--enable-api", "--cors", "*", "--debug", "--log-file", "/app/rasa/log/debug.log"]