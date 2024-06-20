FROM openjdk:17-jdk-slim-buster
ADD target/transversal-discoveryService-*.jar eurekaDiscovery.jar
ENV SPRING_PROFILES_ACTIVE=default
EXPOSE 8761
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=${SPRING_PROFILES_ACTIVE}","/eurekaDiscovery.jar"]