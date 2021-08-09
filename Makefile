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

	@echo "Generating dart files for app ..."
	protoc -I ./ greet/greetpb/*.proto --dart_out=grpc:.
	mv greet/greetpb/*.dart flutter_app/lib/grpc
	protoc -I ./ calculator/calculatorpb/*.proto --dart_out=grpc:.
	mv calculator/calculatorpb/*.dart flutter_app/lib/grpc