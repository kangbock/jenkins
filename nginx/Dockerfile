FROM    nginx

RUN     mkdir -p /app
COPY    . /app
WORKDIR /app
COPY    --from=app default.conf /etc/nginx/conf.d/
COPY    --from=app login.html /usr/share/nginx/html/
COPY    --from=app logout.html /usr/share/nginx/html/
COPY    --from=app register.html /usr/share/nginx/html/
COPY    --from=app table.css /usr/share/nginx/html/
COPY    --from=app board.css /usr/share/nginx/html/
COPY    --from=app login.css /usr/share/nginx/html/
COPY    --from=app register.css /usr/share/nginx/html/
COPY    --from=app 504.html /usr/share/nginx/html/
ADD    /app/temp /usr/share/nginx/html/

EXPOSE  80
