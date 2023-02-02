FROM adoptopenjdk/openjdk11:alpine-jre

RUN gradle build

EXPOSE 8080

ARG JAR_FILE=build/libs/github-action-cloud-run-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar

ENTRYPOINT exec java -jar /app.jar
