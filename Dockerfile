FROM openjdk:8-jdk-alpine
RUN apk add --no-cache curl bash nodejs && \
    curl https://cli-assets.heroku.com/install.sh | sh && \
    apk del curl
RUN heroku plugins:install java