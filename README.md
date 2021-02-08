# API
Holds API spec for all services. Includes protobuf & pubsub channel descriptions.

## Docker Compilation

Run `make` to use docker to compile python and go protobuf files

## Python

Default grpc generation for python is bad. Use https://github.com/danielgtaylor/python-betterproto instead.

Compile command:
```protoc -I protos\tensorbeat --python_betterproto_out=gen .\protos\tensorbeat\common.proto .\protos\tensorbeat\datalake.proto```