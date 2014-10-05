FROM debian:latest
MAINTAINER Nicolas Claudon <nicolasclaudon@gmail.com>

RUN apt-get update && \
apt-get install -qq -y --no-install-recommends \
openjdk-7-jre-headless \
curl && \
apt-get autoremove -y; apt-get clean -y; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*