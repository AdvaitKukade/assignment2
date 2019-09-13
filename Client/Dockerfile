#Client Side Dockerfile

FROM alpine 

RUN cd / 
COPY ./Client/ClientFileFetch.sh /home

RUN apk update && apk add nano
RUN apk add openrc
RUN apk add openssh
RUN apk add sshpass
RUN rc-status

RUN touch /run/openrc/softlevel

CMD ["/bin/sh","/home/ClientFileFetch.sh"]
WORKDIR /clientdata


