FROM maven AS builder
COPY . sa-webapp
WORKDIR sa-webapp
RUN mvn install

#FROM openjdk:8-jdk-alpine AS release
FROM openjdk
# Environment Variable that defines the endpoint of sentiment-analysis python api.
ENV SA_LOGIC_API_URL http://localhost:5000
COPY --from=builder /sa-webapp/target/sentiment-analysis-web-0.0.1-SNAPSHOT.jar /
EXPOSE 8080
CMD ["java", "-jar", "sentiment-analysis-web-0.0.1-SNAPSHOT.jar", "--sa.logic.api.url=${SA_LOGIC_API_URL}"]
