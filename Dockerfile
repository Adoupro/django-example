# Get the offical image
FROM python:3.9.18

# Generate python output
ENV PYTHONUNBUFFERED 1

# Create the root directory
RUN mkdir /app-root

# Set the working directory
WORKDIR /app-root

# Copy and link the current directory contents into the container
ADD . /app-root

# Install the needed packages
RUN pip install -r requirements.txt