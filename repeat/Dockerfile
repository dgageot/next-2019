# Don't copy that Dockerfile, use a multi-stage build instead.
FROM golang:1.11.5-alpine3.9

CMD ["/app"]
COPY main.go .
RUN go build -o /app
