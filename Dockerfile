FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8761



COPY target/*.jar /appSR.jar


ENTRYPOINT ["java" ,"-jar", "appSR.jar"]

CMD ["mvn", "spring-boot:run"]
