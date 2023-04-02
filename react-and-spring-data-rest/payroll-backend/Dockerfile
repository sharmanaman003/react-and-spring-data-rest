FROM openjdk:8-jre-alpine
#copy jar file from builder
COPY target/*.jar /project/

ENV SPRING_DATASOURCE_URL="your_postgres_url_here"

EXPOSE 8080

CMD java -jar /project/react-and-spring-data-rest-*.jar