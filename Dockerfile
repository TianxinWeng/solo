FROM index.alauda.cn/library/maven:3.2-jdk-7
MAINTAINER Liang Ding <dl88250@gmail.com>

ADD . /usr/src/solo
WORKDIR /usr/src/solo
RUN mvn package -X
WORKDIR /usr/src/solo/target/solo


EXPOSE 8080
