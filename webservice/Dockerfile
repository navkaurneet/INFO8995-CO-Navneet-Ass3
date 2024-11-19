FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy application files into the container
COPY app.py /app/app.py
COPY config.txt /app/config.txt  
# Copy the config file into the container

# Install required Python packages
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# Expose the application's port
EXPOSE 5000

# Define the command to run the application
CMD ["python", "/app/app.py"]
