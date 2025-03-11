#!/bin/sh
./app &
sleep 5
go test -v ./tests
