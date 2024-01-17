# Use the official Jupyter base image
FROM jupyter/base-notebook:latest

# Set the working directory
WORKDIR /home/jovyan

# Copy requirements.txt
COPY requirements.txt .

# Install additional Python packages using pip
RUN pip install --no-cache-dir -r requirements.txt

# Start Jupyter Notebook without authentication
CMD ["start-notebook.sh", "--NotebookApp.token=''"]
