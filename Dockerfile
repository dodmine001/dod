FROM ubuntu:latest
RUN apt update && apt install wget curl git -y
COPY start.sh .
RUN sh start.sh
