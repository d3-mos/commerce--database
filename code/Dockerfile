FROM mariadb:latest

# Root user
ENV MYSQL_ROOT_PASSWORD 1234

# Database user
# ENV MYSQL_USER     claropay
# ENV MYSQL_PASSWORD claropay

# Database
# ENV MYSQL_DATABASE CLAROPAY

WORKDIR /docker-entrypoint-initdb.d
ADD claropay*.sql ./
ADD build.sh ./

# OWN build database script
RUN chmod +x build.sh
RUN ./build.sh

# Delete part SQL scripts.
RUN rm claropay*
RUN rm build.sh

EXPOSE 3306