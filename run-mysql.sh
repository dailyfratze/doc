brew install pgloader

docker run -d -p 3306:3306 --name dailyfratze_prod \
    -e MYSQL_ROOT_PASSWORD=root \
    mysql:5.6.40 \
    --character-set-server=utf8mb4 --collation-server=utf8mb4_bin

mysql --host=127.0.0.1 --port=3306  -uroot -proot --default-character-set=utf8mb4 

create database dailyfratze_prod;

mysql --host=127.0.0.1 --port=3306  -uroot -proot --default-character-set=utf8mb4 dailyfratze_prod  < 20180616.sql

pgloader create-and-fill-import-schema.command