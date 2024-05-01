# Use latest Python runtime as a parent image
FROM mcr.microsoft.com/devcontainers/python:1-3.12

# Meta-data
LABEL description="Data Science Workflow #1: Self-Contained Container\
      Libraries, data, and code in one image"

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required libraries
RUN pip3 install -r requirements.txt

# Make port 8888 available to the world outside this container
EXPOSE 9696

# Run jupyter when container launches
CMD ["python", "main.py"]
# Build the container with: docker build -t iris-data .
# Run the container with: docker run -p 8888:8888 iris-data

