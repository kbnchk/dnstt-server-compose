FROM golang:alpine AS builder
WORKDIR /build
COPY . .
WORKDIR /build/dnstt-server
RUN CGO_ENABLED=0 GOOS=linux go build -o dnstt-server

FROM alpine
WORKDIR /app
COPY --from=builder /build/dnstt-server/dnstt-server .
COPY docker-entrypoint.sh /app/
RUN chmod +x /app/docker-entrypoint.sh
ENTRYPOINT ["/app/docker-entrypoint.sh"]
