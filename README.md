# API
Holds API spec for all services. Includes protobuf & pubsub channel descriptions.

## Docker Compilation

Run `make` to use docker to compile protobuf files acordining to buf.gen.yaml.  
To generate more languages, edit buf.gen.yaml

# Potentially Helpful Tools
The GRPC tooling ecosystem is not as developed as REST. I've included some leads to tools that might help. I haven't used some of them.

- curl for GRPC: https://github.com/fullstorydev/grpcurl/ 