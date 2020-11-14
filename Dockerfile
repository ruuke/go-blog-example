FROM golang:1.15-buster AS build

# Fresh for rebuild on code change, no need for production
RUN go get -u github.com/pilu/fresh
RUN go get github.com/go-martini/martini
RUN go get github.com/martini-contrib/render
RUN go get github.com/russross/blackfriday
RUN go get gopkg.in/mgo.v2

WORKDIR /go/app
COPY ./app .

CMD fresh

EXPOSE 3000
