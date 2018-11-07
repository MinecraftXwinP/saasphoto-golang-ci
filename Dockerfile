FROM golang:1.11.0-alpine3.8

RUN apk --no-cache --update add git build-base nodejs yarn cmake
RUN yarn global add serverless && apk --no-cache del yarn
RUN GO111MODULE=off go get github.com/magefile/mage github.com/golang/mock/mockgen && rm -rf $GOPATH/src/* $GOPATH/pkg
