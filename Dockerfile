# syntax=docker/dockerfile:1

FROM golang:1.16 AS builder
COPY . /app
WORKDIR /app
RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o server greet/greet_server/server.go

# FROM envoyproxy/envoy-alpine:v1.19-latest
# COPY envoy.yaml /etc/envoy/envoy.yaml
# COPY --from=builder /app/server /server
# COPY start.sh /start.sh
# RUN chmod +x /start.sh

FROM scratch
COPY --from=builder /app/server /server
RUN chmod +x /start

CMD ["/start"]