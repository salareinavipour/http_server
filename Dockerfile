FROM alpine:3.2

RUN addgroup -S app && adduser -S app -G app

# Update and install base packages
RUN apk update && apk upgrade && apk add curl wget bash
# Install ruby and ruby-bundler
RUN apk add ruby ruby-bundler
# Clean APK cache
RUN rm -rf /var/cache/apk/*
RUN mkdir /usr/app
WORKDIR /usr/app
COPY . /usr/app
USER app

CMD [ "ruby", "http_server.rb" ]
EXPOSE 80
