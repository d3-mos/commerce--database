FROM mariadb:latest

ENV MYSQL_ROOT_PASSWORD 1234
ENV MYSQL_USER     etlsource
ENV MYSQL_PASSWORD etlsource

ADD ./etl_source_simulation.sql /docker-entrypoint-initdb.d

EXPOSE 3306