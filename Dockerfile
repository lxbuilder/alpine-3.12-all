FROM alpine:3.12

RUN apk update && \
    apk search -q | time xargs apk add --force && \
    rm -rvf /var/cache/apk/*