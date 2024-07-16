# Run stage

FROM openjdk:17-jdk-slim
WORKDIR /app

COPY --from=build /app/target/main-service-1.0-SNAPSHOT.jar computer.jar
EXPOSE 8080

ENTRYPOINT ["java","-jar","computer.jar"]