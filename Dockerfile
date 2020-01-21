FROM maven:3.5-jdk-8-alpine as build (2)
WORKDIR /app
COPY --from=clone . /app (3)
RUN mvn spring-boot:run
#FROM openjdk:8-jre-alpine
#WORKDIR /app
#COPY --from=build /app/target/spring-petclinic-1.5.1.jar /app
CMD ["mvn spring-boot:run"]