FROM python:3.9-slim

# Setting the working directory
WORKDIR /app

# Copy the files into the container's /app directory
COPY webservice.py .
COPY config.txt .

# Installing requirements
RUN pip install Flask

EXPOSE 5000

CMD ["python", "webservice.py"]
