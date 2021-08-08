.PHONY: generate
generate:
	@echo "Generating greet ..."
	protoc --go_out=. --go_opt=paths=source_relative \
    --go-grpc_out=. --go-grpc_opt=paths=source_relative \
    greet/greetpb/*.proto

	@echo "Generating calculator ..."
	protoc --go_out=. --go_opt=paths=source_relative \
    --go-grpc_out=. --go-grpc_opt=paths=source_relative \
    calculator/calculatorpb/*.proto