FROM openjdk:11-jre-slim
WORKDIR /app
COPY target/gitTerraformEC2-0.0.1-SNAPSHOT.jar /app/gitTerraformEC2-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "gitTerraformEC2-0.0.1-SNAPSHOT.jar"]