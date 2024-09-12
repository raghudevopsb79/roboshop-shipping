FROM          maven
RUN           mkdir /app
WORKDIR       /app
COPY          ./ /app/
RUN           mvn clean package
ENTRYPOINT    ["java", "-Xms1750m", "-Xmx1750m", "-jar", "target/shipping-1.0.jar"]
