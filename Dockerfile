# This is a Docker file for running the protoc command to generate grpc pb.go files from .proto definitions.
# Pass the .proto files via volume mount
# e.g. docker run --rm -v $PWD:/proto datmanslo/golang-protoc <relative path under /proto to file.proto>   

FROM ubuntu:19.10
RUN apt update && apt install -y --no-install-recommends \
      protobuf-compiler \
      golang-goprotobuf-dev \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir /proto

WORKDIR /proto
ENTRYPOINT ["protoc", "-I", "/proto", "--go_out=plugins=grpc:."]
