FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8080



COPY target/*.jar /appOFF.jar


ENTRYPOINT ["java","-jar", "appOFF.jar"]
