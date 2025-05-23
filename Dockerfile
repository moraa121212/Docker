# Usee Ubuntu 18.04 as the base image
FROM ubuntu:18.04
# Set working directory
WORKDIR /app
# Install Python 3.6 and necessary system dependencies
RUN apt-get update && apt-get install -y \
    python3.6 \
    python3-pip \
    python3.6-venv \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create a virtual environment
RUN python3.6 -m venv /app/venv

# Upgrade pip (fixed typo)
RUN /app/venv/bin/pip install --upgrade pip

# Copy and install dependencies
COPY requirements.txt /app/
RUN /app/venv/bin/pip install --no-cache-dir -r /app/requirements.txt

# Copy application files
COPY routes.py /app/

# Expose port 5000
EXPOSE 5000

# Set the command to run the Flask app
CMD ["/app/venv/bin/python", "/app/routes.py"]
