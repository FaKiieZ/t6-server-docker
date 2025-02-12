FROM debian:stable-20241202-slim

RUN apt install sudo
RUN sudo apt install git

RUN mkdir -p T6Server && wget -O T6Server.tar.gz https://github.com/Sterbweise/T6Server/releases/download/v3.1.1/T6Server.tar.gz && tar -xzvf T6Server.tar.gz -C T6Server && rm T6Server.tar.gz

RUN cd T6Server

RUN chmod +x install.sh

RUN sudo ./install.sh