FROM openjdk:21

WORKDIR /usr/src/myapp

COPY . /usr/src/myapp

# Give execute permission to mvnw
RUN chmod +x mvnw

# Run Maven build
RUN ./mvnw clean package

CMD ["java", "-jar", "target/your-app.jar"]  # Replace with actual jar name
