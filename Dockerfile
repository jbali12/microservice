FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8081



COPY target/*.jar /appPS.jar


ENTRYPOINT ["java","-jar", "appPS.jar"]

RUN cd target/ 

CMD ["java","-jar", "product-service-0.0.1-SNAPSHOT.jar"]
