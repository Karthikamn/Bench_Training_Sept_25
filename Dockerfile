FROM golang:1.20 AS builder
WORKDIR /app
COPY . .
RUN go build -o my-service

FROM alpine:3.18
WORKDIR /app
COPY --from=builder /app/my-service .
CMD ["./my-service"]
