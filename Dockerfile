FROM golang:1.13-alpine

ADD . /go/src/cow
WORKDIR /go/src/cow

RUN go mod vendor

RUN mkdir build
RUN go build -o build/cow .

RUN cp build/cow /usr/local/bin/cow

CMD ["/usr/local/bin/cow"]
