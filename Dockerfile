FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y install syslog-ng

COPY syslog-ng.conf /etc/syslog-ng/syslog-ng.conf

CMD ["syslog-ng", "--foreground", "--no-caps"]
