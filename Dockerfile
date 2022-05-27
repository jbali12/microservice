FROM adoptopenjdk/openjdk11:alpine-jre

RUN apk --no-cache add curl

EXPOSE 8081



COPY target/*.jar /appPS.jar


ENTRYPOINT ["java" ,"-jar", "appPS.jar"]

