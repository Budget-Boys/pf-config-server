FROM openjdk:17-jdk-slim

WORKDIR /app

COPY target/*.jar app.jar

COPY config-repo/ ./config-repo/

EXPOSE 8888

ENTRYPOINT ["java", "-jar", "app.jar"]
