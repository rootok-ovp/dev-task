FROM golang:latest as build

ADD application/server.go /app
WORKDIR /app
RUN export CGO_ENABLED=0 && go build -o server server.go

FROM alpine 

WORKDIR /app
COPY --from=build /app/server /app/server

EXPOSE 8080
ENTRYPOINT ["/app/server"]
