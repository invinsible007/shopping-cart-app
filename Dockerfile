# Use a lightweight base image with OpenJDK 8
FROM eclipse-temurin:8-jre-alpine

# Set the working directory to /usr/app
WORKDIR /usr/app

# Set a non-root user for running the application
RUN adduser -D appuser
USER appuser

# Copy the JAR file to the /usr/app directory
COPY target/shopping-cart.jar app.jar

# Expose the port on which the application will run
EXPOSE 8070

# Run the application using a non-root user
CMD ["java", "-jar", "app.jar"]
