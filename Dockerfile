FROM eclipse-temurin:17-jdk-alpine as build
VOLUME /tmp
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN /app/gradlew build
RUN ls /app/build/libs
RUN mv /app/build/libs/*.jar /app/app.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app/app.jar"]
#WORKDIR /workspace/app
#
#COPY .gradle .gradle
#COPY src src
#
#FROM gradle:8.7-jdk17 as builder
#
#RUN ./gradlew clean build
#RUN mkdir -p target/dependency && (cd target/dependency; jar -xf ../*.jar)
#
#COPY build/libs/*.jar /opt/app
#
#FROM eclipse-temurin:17-jdk-alpine
#VOLUME /tmp
##ARG DEPENDENCY=/workspace/app/target/dependency
##COPY --from=build ${DEPENDENCY}/BOOT-INF/lib /app/lib
##COPY --from=build ${DEPENDENCY}/META-INF /app/META-INF
##COPY --from=build ${DEPENDENCY}/BOOT-INF/classes /app
#
#ENTRYPOINT ["java", "-cp", "app:app/lib/*", "com.jtongay.poc.PocApplicationKt"]
