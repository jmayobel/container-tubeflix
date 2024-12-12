# Usa la imagen base de Amazon Corretto (o cualquier otra imagen de Java)
FROM amazoncorretto:17

# Establece el directorio de trabajo
WORKDIR /app

# Copia el JAR desde la carpeta target al contenedor
COPY target/MicroServ_Usuarios.jar app.jar

# Expón el puerto
EXPOSE 8081

# Define el comando para ejecutar el JAR
CMD ["java", "-jar", "app.jar"]
