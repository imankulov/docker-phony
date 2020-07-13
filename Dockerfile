FROM golang:1.14
WORKDIR /go/src/phony
COPY wrapper.sh .
RUN \
    go get github.com/yields/phony && \
    chmod +x ./wrapper.sh
ENTRYPOINT [ "./wrapper.sh" ]
