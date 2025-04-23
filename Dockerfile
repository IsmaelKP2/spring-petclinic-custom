FROM maven:3.9.9-eclipse-temurin-17
VOLUME /tmp
ADD . /usr/src/app
WORKDIR /usr/src/app

RUN mvn clean package -X -DskipTests
RUN curl -L https://github.com/signalfx/splunk-otel-java/releases/download/v2.14.0/splunk-otel-javaagent.jar --output splunk-otel-javaagent.jar
#v1.32.3
ENTRYPOINT [ "java", "-javaagent:./splunk-otel-javaagent.jar", "-jar", "target/spring-petclinic-3.4.0-SNAPSHOT.jar" ]
