FROM nclaudon/openjdk:7
MAINTAINER Nicolas Claudon <nicolasclaudon@gmail.com>

RUN curl -s http://apache.mirror.cdnetworks.com/hadoop/common/hadoop-2.5.1/hadoop-2.5.1.tar.gz | tar -xz --exclude=share/docs -C /usr/local/
RUN cd /usr/local && ln -s ./hadoop-2.5.1 hadoop
