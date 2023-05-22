FROM    nginx

COPY    . /app
WORKDIR /app
COPY    /app/default.conf /etc/nginx/conf.d/
COPY    /app/login.html /usr/share/nginx/html/
COPY    /app/logout.html /usr/share/nginx/html/
COPY    /app/register.html /usr/share/nginx/html/
COPY    /app/table.css /usr/share/nginx/html/
COPY    /app/board.css /usr/share/nginx/html/
COPY    /app/login.css /usr/share/nginx/html/
COPY    /app/register.css /usr/share/nginx/html/
COPY    /app/504.html /usr/share/nginx/html/
ADD    /app/temp /usr/share/nginx/html/

EXPOSE  80
