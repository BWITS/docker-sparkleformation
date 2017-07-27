FROM ruby:alpine

RUN apk add --update alpine-sdk && \
    gem install sfn && \
    apk del alpine-sdk && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

WORKDIR /app

ENTRYPOINT ["sfn"]
CMD ["--help"]
