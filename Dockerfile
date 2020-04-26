mysql:
  image: mysql:5.7
  ports:
    - "3306:3306"
  environment:
    - MYSQL_ROOT_PASSWORD=
    - MYSQL_ALLOW_EMPTY_PASSWORD=true
    - MYSQL_USER=petclinic
    - MYSQL_PASSWORD=petclinic
    - MYSQL_DATABASE=petclinic
  volumes:
    - "./conf.d:/etc/mysql/conf.d:ro"
