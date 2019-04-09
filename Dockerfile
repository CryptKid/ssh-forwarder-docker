FROM ubuntu:rolling
MAINTAINER cryptkiddie
RUN apt update
RUN apt install openssh-client -y
RUN useradd -ms /bin/bash tunnel
#RUN mkdir /home/tunnel
#RUN chown -Rv tunnel:tunnel /home/tunnel/
COPY ssh /home/tunnel/.ssh/
COPY scripts /SCRIPTS/
RUN chown -Rv tunnel:tunnel /home/tunnel/
USER tunnel
RUN mkdir -p /home/tunnel/.ssh/
EXPOSE 1234
ENTRYPOINT ["/SCRIPTS/entrypoint.sh"]
