# Use an official  runtime as a parent image
FROM java:8-jre
FROM maven

# Set the working directory to /app
WORKDIR /workflow

# Copy the current directory contents into the container at /app
ADD . /workflow

# Make port 80 available to the world outside this container
EXPOSE 8121

# Run app.py when the container launches
CMD ["mvn", "clean" ,"package"]

CMD ["mvn", "spring-boot:run"]




