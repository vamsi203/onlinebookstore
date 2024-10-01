# Use an appropriate base image
FROM openjdk:8-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the artifact to the container
COPY target/onlinebookstore.war /app/onlinebookstore.war

# Define the entry point for the container
ENTRYPOINT ["java", "-jar", "/app/onlinebookstore.war"]
