FROM golang:alpine3.17 AS builder

WORKDIR /app

COPY hello.go .

RUN go build hello.go



FROM scratch

COPY --from=builder /app/hello .

CMD [ "/hello" ]

