# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container
COPY target/demo*.jar app.jar

# Expose the port that your application listens on
EXPOSE 8080

# Define the command to run your application
CMD ["java", "-jar", "app.jar"]
