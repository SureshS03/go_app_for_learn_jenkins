#used alpine tag of go, bcz go application its just fmt hello world, so for complex application use normal golang with full os like ubuntu and deb
FROM golang:1.25.5-alpine3.23 AS go_builder
WORKDIR /app
COPY . ./
RUN go build -o app

FROM alpine:latest
WORKDIR /app
COPY --from=go_builder /app/app .
CMD [ "./app" ]