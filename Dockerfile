FROM golang:1.24

WORKDIR /app

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build

CMD ["/12th_sprint.exe"]