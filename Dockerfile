FROM adoptopenjdk/openjdk11:alpine-jre

RUN apk update
RUN apk search curl
RUN apk add curl

EXPOSE 8081



COPY target/*.jar /appPS.jar


ENTRYPOINT ["java" ,"-jar", "appPS.jar"]

