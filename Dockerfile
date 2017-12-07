FROM java:8

RUN apt-get update

RUN apt-get install maven -y

ADD pom.xml /springboot-docker-app/

ADD src/ /springboot-docker-app/src/

WORKDIR /springboot-docker-app/

RUN mvn package

EXPOSE  8080

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","target/springboot-docker-app-1.0-SNAPSHOT.jar"]