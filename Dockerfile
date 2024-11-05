FROM nginx:alpine

RUN apk add --no-cache git

RUN git clone https://ArneRateau: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@github.com/ArneRateau/simple-portfolio.git /usr/share/nginx/html/portfolio

RUN cp -r /usr/share/nginx/html/portfolio/* /usr/share/nginx/html/

RUN rm -rf /usr/share/nginx/html/portfolio
