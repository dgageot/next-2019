FROM gcr.io/cloud-builders/go:debian as builder
WORKDIR /usr/local/go/src/github.com/dgageot/hexagons/
COPY main.go types.go ./
RUN go build -o /game .

FROM gcr.io/distroless/base
EXPOSE 8888
ENTRYPOINT ["/game"]
COPY --from=builder /game /
