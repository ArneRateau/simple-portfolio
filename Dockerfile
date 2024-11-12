FROM nginx:alpine

RUN apk add --no-cache git

RUN git clone https://github.com/ArneRateau/simple-portfolio.git /simple-portfolio


RUN cp -r /simple-portfolio/* /usr/share/nginx/html/

RUN rm -rf /simple-portfolio
