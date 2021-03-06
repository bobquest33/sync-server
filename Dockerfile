FROM golang:1.7.3-alpine

RUN apk add --update git

RUN export GOPATH=$HOME

ADD . /go/src/github.com/Senior-Design-Kappa/sync-server

RUN go install ./src/github.com/Senior-Design-Kappa/sync-server

ENTRYPOINT /go/bin/sync-server

EXPOSE 8000
