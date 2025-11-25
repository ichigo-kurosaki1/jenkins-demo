# Step 1: Use official Python image
FROM python:3.10-slim

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy project files
COPY . .

# Step 4: Install dependencies
RUN pip install -r requirements.txt

# Step 5: Expose container port
EXPOSE 5000

# Step 6: Start Python app
CMD ["python", "app.py"]
