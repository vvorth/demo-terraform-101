#!/bin/bash

cd ./webapp
go mod init main.go
go mod tidy
rice embed-go
GOOS=linux GOARCH=amd64 go build -o ../assets/webapp -v .
cd ..
