FROM golang:1.13 AS builder
WORKDIR /app
COPY main.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -o loadBalancer .

FROM alpine:latest
RUN apk --no-cache add ca-certificates
WORKDIR /root
COPY --from=builder /app/loadBalancer .
ENTRYPOINT [ "/root/loadBalancer" ]