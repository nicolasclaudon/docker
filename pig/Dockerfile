# mostly steal from sequenceiq's great Builderfile https://registry.hub.docker.com/u/sequenceiq/hadoop-docker/dockerfile
# adapt to ubuntu14.10

FROM nclaudon/hadoop:2.5.1_cluster
MAINTAINER Nicolas Claudon <nicolasclaudon@gmail.com>

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64
ENV PATH $PATH:$JAVA_HOME/bin

ENV HADOOP_PREFIX /usr/local/hadoop
ENV HADOOP_CONF_DIR $HADOOP_PREFIX/etc/hadoop

RUN mkdir -p /usr/local/hadoop/etc/hadoop/
ADD core-site.xml $HADOOP_CONF_DIR/core-site.xml
ADD hdfs-site.xml $HADOOP_CONF_DIR/hdfs-site.xml
ADD mapred-site.xml $HADOOP_CONF_DIR/mapred-site.xml
ADD yarn-site.xml $HADOOP_CONF_DIR/yarn-site.xml

RUN curl -s http://apache.mirror.cdnetworks.com/pig/pig-0.13.0/pig-0.13.0.tar.gz | tar -xz --exclude=docs --exclude=src --exclude=tutorial --exclude=test -C /usr/local/ 
RUN cd /usr/local && ln -s ./pig-0.13.0 pig

ENV PIG_CLASSPATH $HADOOP_CONF_DIR

WORKDIR /usr/local/pig
