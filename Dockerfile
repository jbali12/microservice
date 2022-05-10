FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8081



COPY target/*.jar /appPS.jar


ENTRYPOINT ["java","-jar", "appPS.jar"]

WORKDIR target/ 

CMD ["java","-jar", "product-service-0.0.1-SNAPSHOT.jar", "--server.port=8081"]
