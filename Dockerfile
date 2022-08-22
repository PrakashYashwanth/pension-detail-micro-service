FROM openjdk:18-jdk-alpine
WORKDIR /
ADD target/pension-detail-micro-service.jar pension-detail-micro-service.jar
EXPOSE 8200
CMD java -jar pension-detail-micro-service.jar

# FROM openjdk:18
# ARG JAR_FILE=./target/*.jar
# COPY ${JAR_FILE} app.jar
# ARG CSV_FILE=./target/classes/PensionerDetails.csv
# COPY ${JAR_FILE} PensionerDetails.csv
# EXPOSE 8200
# ENTRYPOINT ["java","-jar","app.jar"]