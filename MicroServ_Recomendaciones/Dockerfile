FROM amazoncorretto:17
WORKDIR /app
COPY target/MicroServ_Recomendaciones.jar app.jar
EXPOSE 8083
ENTRYPOINT ["java", "-jar", "app.jar"]