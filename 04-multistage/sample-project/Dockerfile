FROM eclipse-temurin:11-alpine AS dependencies-cache
ENV GRADLE_USER_HOME="/build/.gradle"
WORKDIR /build
COPY gradle /build/gradle/
COPY gradlew /build/
COPY *.gradle /build/
RUN ./gradlew --build-cache --no-daemon

FROM eclipse-temurin:11-alpine AS builder
COPY --from=dependencies-cache /build/.gradle /build/.gradle
ENV GRADLE_USER_HOME="/build/.gradle"
WORKDIR /build
COPY . /build
RUN ./gradlew build --build-cache --no-daemon

FROM eclipse-temurin:11-jre-alpine AS runtime
WORKDIR /opt/sample-app
COPY --from=builder /build/build/libs/sample-project-0.0.1-SNAPSHOT.jar /opt/sample-app/sample-app.jar
ENTRYPOINT ["java", "-jar", "-server", "/opt/sample-app/sample-app.jar"]