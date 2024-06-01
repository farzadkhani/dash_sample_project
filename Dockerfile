FROM python:3.12.3-alpine3.19

# Set environment variables
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

# Install system dependencies
RUN apk add --no-cache \
    musl-dev \
    curl \
    libc6-compat \
    gcc \
    python3-dev \
    py3-pip
    # git \

# Create a working directory
WORKDIR /app

COPY . /app/

RUN pip3 install -r ./requirements.txt


EXPOSE 5080

CMD [ "python", "run.py"]
