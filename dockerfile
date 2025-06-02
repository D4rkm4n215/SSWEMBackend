# Verwende ein Java-OpenJDK-Image als Basis
FROM eclipse-temurin:17-jdk-jammy

# Arbeitsverzeichnis
WORKDIR /app

# Kopiere das fertige JAR in das Image
COPY target/backend-0.0.1-SNAPSHOT.jar app.jar

# Port, den die Spring Boot App nutzt
EXPOSE 8080

# Kommando zum Starten der App
ENTRYPOINT ["java","-jar","app.jar"]