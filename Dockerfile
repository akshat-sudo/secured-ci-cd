FROM openjdk:21
WORKDIR /usr/src/myapp

# Pehle Pura Code Copy Karo
COPY . .

# Ensure Maven Wrapper Executable Hai
RUN chmod +x mvnw

# (Important) `.mvn` Folder Ko Bhi Copy Karo
COPY .mvn .mvn

# Use Maven Wrapper for Build
RUN ./mvnw clean package

CMD ["java", "-jar", "target/your-app.jar"]
