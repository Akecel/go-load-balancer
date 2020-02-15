FROM golang:1.13 AS builder
WORKDIR /app
COPY main.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -o loadBalancer .

FROM alpine:latest
WORKDIR /root
COPY --from=builder /app/loadBalancer .
ENTRYPOINT [ "/root/loadBalancer" ]