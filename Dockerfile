FROM openjdk:21
WORKDIR /usr/src/myapp

COPY /home/group24/project /usr/src/myapp

RUN ./mvnw clean package

CMD ./mvnw cargo:run -P tomcat90
