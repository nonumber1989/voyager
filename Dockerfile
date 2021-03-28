FROM golang:latest

ENV GOPROXY https://goproxy.cn,direct
WORKDIR $GOPATH/src/com.sevenup/falcon/go-gin-example
COPY . $GOPATH/src/com.sevenup/falcon/go-gin-example
RUN go build .

EXPOSE 8000
ENTRYPOINT ["./go-gin-example"]
