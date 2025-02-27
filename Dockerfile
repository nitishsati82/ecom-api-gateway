ARG REGISTRY=""
FROM openjdk:17-jdk-slim


ENV PROJECT_NAME=ecom-api-gateway
ENV PROJECT_VERSION=0.0.1-SNAPSHOT

COPY build/libs/${PROJECT_NAME}-${PROJECT_VERSION}.jar apigateway.jar

EXPOSE 8083

ENTRYPOINT ["sh","-c","java -jar /apigateway.jar --server.port=8083"]