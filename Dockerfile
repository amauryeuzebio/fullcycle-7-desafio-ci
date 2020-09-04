FROM golang:1.15rc1-alpine3.12 as builder

MAINTAINER Amaury Euzebio amaury@a1tecnologia.info

COPY ./src/sum /go/src/sum

WORKDIR /go/src/sum

RUN go build main.go

FROM scratch

WORKDIR /app

COPY --from=builder /go/src/sum .

ENTRYPOINT ["./main"]