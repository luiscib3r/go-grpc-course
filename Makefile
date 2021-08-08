.PHONY: generate
generate:
	@echo "Generating..."
	 protoc --go_out=. --go_opt=paths=source_relative \
    --go-grpc_out=. --go-grpc_opt=paths=source_relative \
    greet/greetpb/*.proto