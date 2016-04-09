FROM maven:3.2-jdk-7-onbuild
MAINTAINER Liang Ding <dl88250@gmail.com>

ADD . /solo
WORKDIR /solo
RUN mvn clean
WORKDIR /solo/target/solo
CMD java -cp WEB-INF/lib/*:WEB-INF/classes org.b3log.solo.Starter

EXPOSE 8080
