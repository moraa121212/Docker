FROM eclipse-temurin:8-jdk
COPY /var/lib/jenkins/.m2/repository/com/example/my-app/1.0.0/my-app-1.0.0.jar demo1-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "demo1-0.0.1-SNAPSHOT.jar"]
