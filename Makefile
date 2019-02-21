NAME=palugada

build:
	@go build -o $(NAME) -v ./main.go

build-alpine:
	@env GOOS=linux GARCH=amd64 CGO_ENABLED=0 go build -o $(NAME) -v ./main.go