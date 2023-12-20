# Use the OpenJDK 17 image as the base image
FROM openjdk:17

# Copy the WAR file (Doctor-Patient-Portal.war) into the container
COPY target/dp.jar dp.jar

# Expose port 8080 for the web application
EXPOSE 8080

# Define the entry point for running the application
ENTRYPOINT ["java", "-jar", "dp.jar"]
