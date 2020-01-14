FROM python:3.7.6-alpine3.10

RUN apk add --update && apk add ca-certificates

COPY ./nerootca2042.crt /usr/local/share/ca-certificates/nerootca2042.crt

RUN update-ca-certificates
