FROM    nginx

RUN     mkdir -p /app
COPY    . /app
WORKDIR /app
COPY    --from=dependencies /app/default.conf /etc/nginx/conf.d/
COPY    --from=dependencies /app/login.html /usr/share/nginx/html/
COPY    --from=dependencies /app/logout.html /usr/share/nginx/html/
COPY    --from=dependencies /app/register.html /usr/share/nginx/html/
COPY    --from=dependencies /app/table.css /usr/share/nginx/html/
COPY    --from=dependencies /app/board.css /usr/share/nginx/html/
COPY    --from=dependencies /app/login.css /usr/share/nginx/html/
COPY    --from=dependencies /app/register.css /usr/share/nginx/html/
COPY    --from=dependencies /app/504.html /usr/share/nginx/html/
ADD    /app/temp /usr/share/nginx/html/

EXPOSE  80
