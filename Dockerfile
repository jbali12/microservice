FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8080



COPY target/*.jar /appSR.jar


ENTRYPOINT ["java","-jar", "appSR.jar"]
