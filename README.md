# golang-protoc
Protoc tool with golang gRPC Support

## Usage:
```
cd <path to .proto file>
docker run --rm -v $PWD:/proto datmanslo/golang-protoc <relative path under /proto to file.proto>

cd ~/go/src/myproject/protocols/
docker run --rm -v $PWD:/proto datmanslo/golang-protoc my_api/my_api.proto

# The tool will generate the ~/go/src/myproject/protocols/my_api/my_api.pb.go file
```
