FROM openjdk:17
ADD target/gitTerraformEC2-0.0.1-SNAPSHOT.jar gitTerraformEC2-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "gitTerraformEC2-0.0.1-SNAPSHOT.jar"]