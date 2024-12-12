FROM amazoncorretto:17
WORKDIR /app
COPY target/MicroServ_Videos.jar app.jar
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "app.jar"]
