FROM golang:latest

RUN mkdir /app
ADD application/server.go /app
WORKDIR /app
RUN ls /app
RUN go build server.go
CMD ["/app/server"]
