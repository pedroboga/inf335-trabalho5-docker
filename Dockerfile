FROM openjdk:20
COPY OlaUnicamp/src/Main.java /app/
WORKDIR /app
RUN javac Main.java
CMD ["java", "OlaUnicamp"]
