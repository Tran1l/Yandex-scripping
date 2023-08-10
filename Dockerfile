FROM ubuntu:latest
RUN apt-get update -qy
RUN apt-get install -qy python3 python3-pip python3.8-dev
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["python3","main.py"]