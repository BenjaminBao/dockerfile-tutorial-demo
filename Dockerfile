# Step 1: Choose a lightweight base image
FROM python:3.11-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the application code into the container
COPY app/ /app

# Step 4: Install dependencies
RUN pip install --no-cache-dir flask

# Step 5: Expose the port the app will run on
EXPOSE 5000

# Step 6: Define the default command to run the app
CMD ["python", "main.py"]
