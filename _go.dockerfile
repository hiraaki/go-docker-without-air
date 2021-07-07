FROM golang:buster as builder

WORKDIR /go/src/app

ADD go.mod .
ADD go.sum .
RUN go mod download

COPY . .

EXPOSE 8000
CMD go run ./cmd/*.go





