
#FROM openjdk:17-jdk-slim
#
#WORKDIR /usr/src/app
#
#ARG JAR_FILE=build/libs/*.jar
#
#COPY ${JAR_FILE} app.jar
#
#
#CMD ["java","-jar","app.jar"]

# COPY . . 파일이 너무 무거워서 복사가 힘들다?? -> dockerignore 어쩌고 하는 걸 봄
####################################################################

# Spring 애플리케이션 이미지 빌드
FROM openjdk:17-jdk-slim

# 작업 디렉토리 설정
WORKDIR /usr/src/app

# Spring Boot JAR 파일을 이미지에 복사
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar

# 환경 변수 설정
#ENV MYSQL_HOST=localhost
#ENV MYSQL_PORT=3306
#ENV MYSQL_USERNAME=test
#ENV MYSQL_PASSWORD=test1234
#ENV MYSQL_DATABASE=testdb

# Spring Boot 애플리케이션 실행
CMD ["java","-jar","app.jar"]

# docker build -t my-spring-app .
# docker run -d -p 8080:8080 --name my-spring-container my-spring-app