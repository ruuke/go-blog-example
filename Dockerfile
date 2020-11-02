FROM golang:1.15-buster AS build

# Fresh for rebuild on code change, no need for production
RUN go get -u github.com/pilu/fresh

WORKDIR /go/app
COPY ./app .

CMD fresh

EXPOSE 8080
