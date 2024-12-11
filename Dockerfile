FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
target/dependency
COPY target/dependency/BOOT-INF/lib /app/lib
COPY target/dependency/META-INF /app/META-INF
COPY target/dependency/BOOT-INF/classes /app
ENTRYPOINT ["java","-cp","app:app/lib/*","jdbc.Application"]
