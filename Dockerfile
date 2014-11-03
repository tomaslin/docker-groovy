FROM dockerfile/java:oracle-java7
MAINTAINER Tomas Lin <tomaslin@gmail.com>

RUN apt-get install unzip

RUN \
  cd /tmp && \
  wget http://dl.bintray.com/groovy/maven/groovy-binary-2.3.7.zip && \
  unzip groovy-binary-2.3.7.zip && \
  mv groovy-2.3.7 /groovy && \
  rm groovy-binary-2.3.7.zip

ENV GROOVY_HOME /groovy
ENV PATH $GROOVY_HOME/bin/:$PATH

RUN echo $PATH

CMD ["bash"]
