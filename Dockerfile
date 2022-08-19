FROM golang:latest as build

WORKDIR /app
ADD application/server.go /app

RUN export CGO_ENABLED=0 && go build -o server server.go

FROM alpine 

WORKDIR /app
COPY --from=build /app/server /app/server

EXPOSE 8080
ENTRYPOINT ["/app/server"]
