FROM golang:1.8.5-alpine
RUN go get -v -u gopkg.in/alecthomas/gometalinter.v2 && \
    ln -s $GOPATH/bin/gometalinter.v2 $GOPATH/bin/gometalinter && \
    gometalinter --install --enable-all

ENTRYPOINT ["gometalinter", "./..."]
