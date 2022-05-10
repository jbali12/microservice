FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8082



COPY target/*.jar /appOFF.jar


ENTRYPOINT ["java","-jar", "appOFF.jar"]


CMD ["mvn", "spring-boot:run"]
