# Start with a lightweight JDK base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from target/ to the container
COPY target/*.jar spring-boot-docker.jar

# Expose the port the app runs on
EXPOSE 9090

# Run the application
ENTRYPOINT ["java", "-jar", "spring-boot-docker.jar"]
