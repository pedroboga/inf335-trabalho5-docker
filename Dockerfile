FROM openjdk:20
COPY OlaUnicamp.java /app/
WORKDIR /app
RUN javac OlaUnicamp.java
CMD ["java", "OlaUnicamp"]
