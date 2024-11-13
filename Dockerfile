FROM nginx:alpine

WORKDIR /tmp

RUN apk add git && \
    git clone https://github.com/ArneRateau/simple-portfolio.git website && \
    cp -r website/* /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
