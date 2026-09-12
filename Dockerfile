FROM httpd:alpine

COPY index.html /usr/local/apache2/htdocs/
COPY week3-picture.jpg /usr/local/apache2/htdocs/
COPY Images /usr/local/apache2/htdocs/Images

RUN sed -i 's/^Listen 80$/Listen 8080/' /usr/local/apache2/conf/httpd.conf && \
    chgrp -R 0 /usr/local/apache2/logs && \
    chmod -R g=u /usr/local/apache2/logs

EXPOSE 8080