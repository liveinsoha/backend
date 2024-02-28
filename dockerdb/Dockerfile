FROM mysql:8.0

# ADD ./init_db/* /docker-entrypoint-initdb.d
# mysql에서 추출한 sql파일들을 도커파일에 복사한다.

ENV MYSQL_USER=test
ENV MYSQL_PASSWORD=test1234
ENV MYSQL_ROOT_PASSWORD=root1234
ENV MYSQL_DATABASE=testdb

CMD ["--character-set-server=utf8mb4", "--collation-server=utf8mb4_unicode_ci"]

# docekr compose를 활용하여 동시에 실행해보자
# 마운트된 로컬의 폴더를 초기화 하고 실행해야 스키마 생성이 되지 않을까?

# 실행 명령
# docker build -t mysql-image .
# docker run -d -v C:\Users\voslr\study\backend\dockerdb\store -p 3306:3306 --name mysql-container mysql-image
