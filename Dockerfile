# Start with a lightweight JDK base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from target/ to the container
COPY target/*.jar jenkins-demo-0.0.1-SNAPSHOT.jar

# Expose the port the app runs on
EXPOSE 9090

# Run the application
ENTRYPOINT ["java", "-jar", "jenkins-demo-0.0.1-SNAPSHOT.jar"]
# ENTRYPOINT ["java", "-jar", "jenkins-demo-0.0.1-SNAPSHOT.jar > demo.log 2>&1 &"]
# CMD ["/bin/sh", "-c", "java -jar demo.jar > demo.log 2>&1 &"
# CMD /bin/sh -c "java -jar demo.jar > demo.log 2>&1 &"