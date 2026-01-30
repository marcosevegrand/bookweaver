.PHONY: build test lint run

setup:
	go mod download

build:
	go build -o bookweaver ./cmd/scraper/main.go

test:
	go test -v ./...

lint:
	golangci-lint run

run: build
	./bookweaver

clean:
	rm -f bookweaver
