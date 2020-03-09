FROM alpine:3.11

RUN apk add --no-cache ansible openssh-client

WORKDIR /playbook
