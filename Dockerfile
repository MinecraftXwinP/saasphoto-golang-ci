FROM golang:1.11.0-alpine3.8

RUN apk --no-cache --update add git build-base && GO111MODULE=off go get github.com/jstemmer/go-junit-report
