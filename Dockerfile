FROM python:3.8-slim

WORKDIR /opt/bme680
COPY src /opt/bme680

RUN apt-get update && apt-get install --no-install-recommends -y \
    build-essential \
    python3-pip \
    libglib2.0-dev && \
    rm -rf /var/lib/apt/lists/*

RUN pip install -r requirements.txt
CMD ["python3", "bme680-air-quality-RC.py"]
