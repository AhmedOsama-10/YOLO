# Use official Python image
FROM python:3-slim-buster

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the entire FastAPI app into the container
COPY . .

# Expose port 8006
EXPOSE 8006

# Command to run the API using Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8006"]