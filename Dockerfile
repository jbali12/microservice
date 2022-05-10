FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8080



COPY target/*.jar /appPS.jar


ENTRYPOINT ["java","-jar", "appPS.jar"]
