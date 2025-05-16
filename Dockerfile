FROM eclipse-temurin:8-jdk
COPY /var/lib/jenkins/workspace/maven-job/target/my-app-1.0.0.jar demo1-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "demo1-0.0.1-SNAPSHOT.jar"]
