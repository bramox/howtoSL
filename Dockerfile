FROM klakegg/hugo:0.101.0-alpine
LABEL description="Hugo multilingual static site"

WORKDIR /src
COPY . /src

# Build the website
RUN hugo --minify

FROM nginx:alpine
COPY --from=0 /src/public /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
