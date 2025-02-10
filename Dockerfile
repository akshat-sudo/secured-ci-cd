FROM openjdk:21
WORKDIR /usr/src/myapp

COPY . /usr/src/myapp

RUN ./mvnw clean package

CMD ./mvnw cargo:run -P tomcat90
