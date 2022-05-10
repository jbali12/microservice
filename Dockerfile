FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8761



COPY target/*.jar /appSR.jar


ENTRYPOINT ["mvn" ,"spring-boot:run"]
