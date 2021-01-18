FROM python:3.8-buster

WORKDIR /app

# Install the mkdocs with its extensions
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy mkdocs related files
COPY docs docs
COPY mkdocs.yml .

# Run the server
EXPOSE 8000
CMD ["mkdocs", "serve"]