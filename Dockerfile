FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY . .

RUN chmod +x gradlew
RUN ./gradlew build

CMD ["java", "-jar", "build/libs/employee-management-system-backend-0.0.1-SNAPSHOT.jar"]
