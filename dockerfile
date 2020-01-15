FROM golang:1.13.6-alpine3.11 as build-env 
RUN mkdir /demoapp
WORKDIR /demoapp
COPY go.mod .
COPY go.sum .

# Get dependancies - will also be cached if we won't change mod/sum
RUN go mod download
# COPY the source code as the last step
COPY . .

WORKDIR /demoapp/cmd

# Build the binary
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /go/bin/demoapp
FROM scratch
COPY --from=build-env /go/bin/demoapp /go/bin/demoapp
ENTRYPOINT ["/go/bin/demoapp"]