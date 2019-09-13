#Server Side Docker File

FROM alpine
WORKDIR /serverdata

COPY ./Server/createfile.sh /serverdata
COPY ./Server/ServerFile.sh /home
RUN apk add nano 
RUN apk add openrc
RUN apk add openssh
RUN apk add sshpass
RUN rc-status
RUN touch /run/openrc/softlevel

RUN sh ./createfile.sh
ENTRYPOINT ["/bin/sh","/home/ServerFile.sh"]

RUN adduser --disabled-password --gecos "" server
RUN echo server:123456 | chpasswd


