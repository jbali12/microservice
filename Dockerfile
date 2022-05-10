FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8000



COPY target/*.jar /app.jar


ENTRYPOINT ["java","-jar", "app.jar"]

CMD ["mvn", "spring-boot:run"]
