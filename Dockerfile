FROM golang:1.18

WORKDIR /app
COPY . .

RUN go mod download
RUN go build -o app .

RUN chmod +x run-tests.sh

EXPOSE 7540

CMD ["./run-tests.sh"]
