FROM amazoncorretto:17
WORKDIR /app
COPY target/MicroServ_Frontend.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
