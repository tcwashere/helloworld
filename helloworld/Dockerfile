FROM java:7

ADD ./helloworld/target/*.jar /app/demo-ms.jar
CMD ["java", "-Xmx200m", "-Dspring.cloud.bootstrap.name=bootstrap-deploy", "-jar", "/app/demo-ms.jar"]
