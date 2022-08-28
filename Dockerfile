FROM golang:1.8 AS builder
WORKDIR /
COPY main.go .
RUN go build -o desafio-go 

FROM scratch
WORKDIR /
COPY --from=builder /desafio-go desafio-go
CMD ["./desafio-go"]