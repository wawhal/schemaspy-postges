FROM java:8

RUN apt-get update

RUN apt-get -y install nginx

RUN wget http://sourceforge.net/projects/schemaspy/files/schemaspy/SchemaSpy%205.0.0/schemaSpy_5.0.0.jar/download -O schemaSpy.jar

RUN wget https://jdbc.postgresql.org/download/postgresql-42.1.4.jar -O postgresql-jdbc4.jar

RUN apt-get install -y graphviz

RUN rm -v /etc/nginx/nginx.conf

COPY app/conf/nginx.conf /etc/nginx

COPY app/init.sh /bin/

RUN chmod a+x /bin/init.sh

CMD java -jar schemaSpy.jar -t pgsql -s public -db hasuradb -u admin -p understand-photoengraving-sloughy-dahl -host postgres.hasura -o /usr/share/nginx/html -dp postgresql-jdbc4.jar

CMD nginx -g daemon off; 
# CMD ["/bin/init.sh"]
