# Use an official Python base image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy files to the container
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Start the Flask app
CMD ["python", "app.py"]
