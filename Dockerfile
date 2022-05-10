FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8761



COPY target/*.jar /appSR.jar

RUN mvn spring-boot:run

ENTRYPOINT ["java","-jar", "appSR.jar"]
