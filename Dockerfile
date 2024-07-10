FROM alpine:latest

RUN apk --no-cache add openjdk17

WORKDIR /app

COPY gradlew /app/
COPY gradle /app/gradle
COPY build.gradle.kts /app/
COPY settings.gradle.kts /app/

COPY src /app/src

RUN chmod +x ./gradlew

EXPOSE 8080

CMD ["./gradlew", "bootRun"]
