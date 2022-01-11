FROM openjdk:11-jre-slim-buster

EXPOSE 8080

COPY ./target/KnCare-0.0.1-SNAPSHOT.jar /usr/app/

WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "KnCare-0.0.1-SNAPSHOT.jar"]