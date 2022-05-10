FROM adoptopenjdk/openjdk11:alpine-jre





COPY target/*.jar /appPS.jar


ENTRYPOINT ["java","-jar", "appPS.jar"]

EXPOSE 8081

WORKDIR target/ 

CMD ["java","-jar", "product-service-0.0.1-SNAPSHOT.jar", "--server.port=8081"]
