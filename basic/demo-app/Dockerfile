FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=./target/*.jar
COPY target/demo-service-0.1.0.jar /app/demo-service-0.1.0.jar
USER root
RUN chmod 755 /app/demo-service-0.1.0.jar
RUN echo $(ls -l /app)
ENTRYPOINT ["java","-jar","/app/demo-service-0.1.0.jar"]