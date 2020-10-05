FROM golang:1.13 AS builder
WORKDIR /app
COPY main.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -o loadBalancer .

FROM scratch
COPY --from=builder /app/loadBalancer .
ENTRYPOINT [ "/loadBalancer" ]