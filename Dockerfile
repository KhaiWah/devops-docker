# 1. Use an official Python runtime as a parent image
FROM python:3.11-slim

# 2. Set the working directory in the container
WORKDIR /app

# 3. Copy the requirements file into the container
# Copying this separately allows Docker to cache your dependencies
COPY requirements.txt ./

# 4. Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of your application code
COPY dev.py

# 7. Run the application
CMD ["python", "dev.py"]
