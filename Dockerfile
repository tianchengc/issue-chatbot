# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the app runs on
EXPOSE 8000

# Define environment variables for Azure AI Search Service
ENV AZURE_SEARCH_ENDPOINT=""
ENV AZURE_ADMIN_KEY=""
ENV AZURE_QUERY_KEY=""

# Run the application
CMD ["python", "agents/issue_agent.py"]