FROM gcr.io/cloud-builders/go:debian as builder
WORKDIR /usr/local/go/src/github.com/dgageot/hexagons/
COPY main.go .
RUN go build -o /proxy main.go

FROM gcr.io/distroless/base
EXPOSE 8888
ENTRYPOINT ["/proxy"]
COPY --from=builder /proxy /
