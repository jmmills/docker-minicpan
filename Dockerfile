FROM ubuntu:latest
MAINTAINER = Jason M. Mills <jmmills@cpan.org>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y cpanminus

RUN cpanm CPAN::Mini
RUN minicpan -l /cpan/ --remote-from cpan


CMD ["/bin/bash", "-l"]
