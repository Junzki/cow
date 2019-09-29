FROM go:1.13-alpine

ADD . /go/src/cow
WORKDIR /go/src/cow

RUN go mod vendor

RUN mkdir build
RUN go build -o build/cow .

COPY build/cow /usr/local/bin/cow

CMD ["/usr/local/bin/cow"]
