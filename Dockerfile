FROM ubuntu:latest 
MAINTAINER Trieu Vy "vyb1910730@ctu.edu.vn" 
RUN apt update -y 
RUN apt install -y python3-pip python3-dev build-essential 
ADD . /flask_app 
WORKDIR /flask_app 
RUN pip3 install -r requirements.txt 
ENTRYPOINT ["python3"] 
CMD ["flask_docker.py"] 
