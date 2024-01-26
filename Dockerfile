# This sets the base image for the Docker container, using Python version 3.9.18
# with a slim variant, proving a lightweight foundation.
FROM python:3.9.18-slim

# This command sets the working directory inside the container to /app,
# creating a designated space for subsequent commands.
WORKDIR /app

# This copies the contents of the current directory (where the Dockerfile is located) into the 
# /app directory within the container.
# It includes all files, allowing the container to access your application code and files.
COPY . /app

# This updates the pip package manager to the latest version within the container
RUN pip install --upgrade pip

# This command installs the Python dependencies listed in the requirements.txt file.
# It ensures that the required libraries for your application are installed within the container.
RUN pip install -r requirements.txt

# This specifies the default command to run when the container starts.
# In this case, it launches the Streamlit app with the command "streamlit run app.py"
CMD ["streamlit", "run", "app.py"]