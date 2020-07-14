# Build Stage
# This will build the jar for you but if you make changes you have to rebuild the container image.. So might as well build by hand.
#FROM maven:3.6.3-jdk-8-slim AS build
#COPY src /home/app/src
#COPY pom.xml /home/app
#RUN mvn -f /home/app/pom.xml clean package -DskipTests

# Package Stage # 8-jdk-alpine
FROM openjdk:8-jre-slim
# Create a user and group to run the jar instead of using root
#RUN addgroup -S spring && adduser -S spring -G spring
#USER spring:spring
# Copy the jar file into the container
#COPY --from=build /home/app/target/*.jar /usr/local/lib/app.jar
# If you don't want to use the Build Stage above, manually build the jar, comment out the Build Stage, and uncomment these 2 lines.
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /usr/local/lib/app.jar
# Limit the maximum memory for the process & Specify the command to run the jar
ENTRYPOINT ["java","-jar","-Xmx512m","/usr/local/lib/app.jar"]