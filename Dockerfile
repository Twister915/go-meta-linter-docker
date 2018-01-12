FROM golang:1.9.2-alpine

RUN apk --no-cache add git mercurial ca-certificates && \
    go get -u gopkg.in/alecthomas/gometalinter.v2 && \
    gometalinter.v2 --install --enable-all && \
    rm -r $GOPATH/src/* && \
    mkdir /linter-tools && \
    mv $GOPATH/bin/* /linter-tools && \
    ln -s /linter-tools/gometalinter.v2 /linter-tools/gometalinter && \
    apk del git mercurial ca-certificates

ENV PATH "/linter-tools:${PATH}"

ENTRYPOINT ["gometalinter", "./..."]
