# Use a Colab-like base: Python 3.10 slim
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install system dependencies (to handle Jupyter and any compiled libraries)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    gcc \
    libffi-dev \
    libssl-dev \
    libstdc++6 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set working directory inside the container
WORKDIR /app

# Install Python dependencies
RUN pip install --upgrade pip && pip install --no-cache-dir \
    kagglehub==0.3.12 \
    pandas==2.2.2 \
    matplotlib==3.10.0 \
    seaborn==0.13.2 \
    scikit-learn==1.6.1 \
    numpy==2.0.2 \
    jupyterlab \
    jupyter


# Command to run Jupyter Notebook when the container starts
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token=''"]

COPY STAT315_Project.ipynb /app

# Add the Jupyter config file to the container
# RUN jupyter notebook --generate-config && \
#     echo "c.NotebookApp.notebook_dir = '/home'" >> /root/.jupyter/jupyter_notebook_config.py
