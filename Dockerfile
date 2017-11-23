# Use an official  runtime as a parent image
FROM java:8-jre
FROM maven

# Set the working directory to /app
WORKDIR /deploytesting

# Copy the current directory contents into the container at /app
ADD . /deploytesting 

# Make port 80 available to the world outside this container
EXPOSE 8121

ENV HOMER="Hiiiiiiiiiiiiiiii sekhar"

# Run app.py when the container 
#CMD ["mvn", "clean", "package -DskipTests"]
CMD ["mvn", "spring-boot:run"]
#CMD ["java", "-jar", "target/test.jar"]
