FROM golang:1.23

WORKDIR /app
COPY . .

RUN go mod tidy
RUN go mod download

RUN go build -o app .

EXPOSE 7540

CMD sh -c "./app & sleep 5 && go test -v ./tests"
