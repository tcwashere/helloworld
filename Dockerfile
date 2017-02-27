FROM java:7

ADD ./helloworld/target/*.jar /app/helloword.jar
CMD ["java", "-Xmx200m", "-jar", "/app/helloword.jar"]
