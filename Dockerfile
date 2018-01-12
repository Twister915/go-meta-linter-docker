FROM golang:1.9.2-alpine
RUN apk --no-cache add git mercurial ca-certificates && \
    go get -v -u gopkg.in/alecthomas/gometalinter.v2 && \
    ln -s $GOPATH/bin/gometalinter.v2 $GOPATH/bin/gometalinter && \
    gometalinter --install --enable-all && \
    apk del git mercurial ca-certificates

ENTRYPOINT ["gometalinter", "./..."]
