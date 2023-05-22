FROM    nginx

RUN     mkdir -p /app
COPY    . /app
WORKDIR /app
COPY    --from=nginx default.conf /etc/nginx/conf.d/
COPY    login.html /usr/share/nginx/html/
COPY    logout.html /usr/share/nginx/html/
COPY    register.html /usr/share/nginx/html/
COPY    table.css /usr/share/nginx/html/
COPY    board.css /usr/share/nginx/html/
COPY    login.css /usr/share/nginx/html/
COPY    register.css /usr/share/nginx/html/
COPY    504.html /usr/share/nginx/html/
ADD    /app/temp /usr/share/nginx/html/

EXPOSE  80
