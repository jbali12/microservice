FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8000

RUN apk --no-cache add curl

COPY target/*.jar /app.jar


ENTRYPOINT ["java","-jar", "app.jar"]

CMD ["mvn", "spring-boot:run"]
