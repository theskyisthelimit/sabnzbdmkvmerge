FROM linuxserver/sabnzbd:latest
RUN apt-get -y update
RUN apt-get -y install wget nano gnupg
RUN wget -q -O - https://mkvtoolnix.download/gpg-pub-moritzbunkus.txt | apt-key add
RUN apt-get update
RUN apt -y install mkvtoolnix mkvtoolnix-gui
RUN mkdir /scripts
COPY scripts/ /scripts
