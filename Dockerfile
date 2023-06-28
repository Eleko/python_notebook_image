FROM python:3.11.4-bookworm
LABEL maintainer="Eleko" 
LABEL version="1.0" 
LABEL description="docker image for (python) data science development"
COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt
EXPOSE 8888  
CMD [ "jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser" ]