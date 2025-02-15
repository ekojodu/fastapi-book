# Use a lightweight official Python image
FROM python:3.10-slim

# Set working directory inside the container
WORKDIR /app

# Copy the application files into the container
COPY . /app

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt  # Make sure requirements.txt includes FastAPI, Uvicorn, etc.

# Expose the port that FastAPI will use
EXPOSE 8000

# Command to run FastAPI application using Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
