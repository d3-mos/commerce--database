FROM mariadb:latest

ENV MYSQL_ROOT_PASSWORD 1234
ENV MYSQL_USER     claropay
ENV MYSQL_PASSWORD claropay

WORKDIR /docker-entrypoint-initdb.d
ADD claropay*.sql ./

#Build database script
RUN cat claropay.sql claropay.*.sql > build_script.sql
RUN rm claropay*

EXPOSE 3306