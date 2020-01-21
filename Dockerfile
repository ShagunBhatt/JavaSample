FROM maven:3.5-jdk-8-alpine
#WORKDIR /app
COPY . .
RUN mvn install
#RUN mvn spring-boot:run
#FROM openjdk:8-jre-alpine
#WORKDIR /app
#COPY --from=build /app/target/spring-petclinic-1.5.1.jar /app
#CMD ["mvn spring-boot:run"]
CMD ["mvn spring-boot:run"]
