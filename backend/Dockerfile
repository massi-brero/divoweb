FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /app

RUN mkdir -p /root/.m2 && cat > /root/.m2/toolchains.xml <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<toolchains>
  <toolchain>
    <type>jdk</type>
    <provides>
      <version>21</version>
    </provides>
    <configuration>
      <jdkHome>/opt/java/openjdk</jdkHome>
    </configuration>
  </toolchain>
</toolchains>
EOF

COPY pom.xml .
RUN mvn dependency:go-offline -q
COPY src ./src
RUN mvn package -DskipTests -q

FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
