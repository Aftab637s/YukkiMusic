FROM python:3.10-slim-buster

WORKDIR /app

# System dependencies install karna (FFmpeg zaroori hai music ke liye)
RUN apt-get update && apt-get install -y \
    ffmpeg \
    git \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Files copy karna
COPY . .

# Python requirements install karna
RUN pip3 install --no-cache-dir -U -r requirements.txt

# Bot start karna
CMD ["bash", "start"]
