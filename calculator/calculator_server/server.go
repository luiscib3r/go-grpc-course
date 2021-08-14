package main

import (
	"context"
	"fmt"
	"log"
	"net"

	pb "github.com/correaleyval/grpc-go-course/calculator/calculatorpb"
	"google.golang.org/grpc"
)

type server struct {
	pb.UnimplementedCalculatorServiceServer
}

func (s *server) Sum(ctx context.Context, req *pb.SumRequest) (*pb.SumResponse, error) {
	fmt.Printf("Sum called with %v\n", req)

	firstNumer := req.FirstNumber
	secondNumer := req.SecondNumber

	return &pb.SumResponse{
		SumResult: firstNumer + secondNumer,
	}, nil
}

func (s *server) PrimeNumberDecomposition(
	req *pb.PrimeNumberDecompositionRequest,
	stream pb.CalculatorService_PrimeNumberDecompositionServer,
) error {
	fmt.Printf("PrimeNumberDecomposition called with %v\n", req)

	number := req.GetNumber()
	divisor := int64(2)

	for number > 1 {
		if number%divisor == 0 {
			stream.Send(&pb.PrimeNumberDecompositionResponse{
				PrimeFactor: divisor,
			})

			number = number / divisor
		} else {
			divisor++
			fmt.Printf("Divisor has increated to %v\n", divisor)
		}
	}

	return nil
}

func main() {
	fmt.Println("Calculator Server")

	lis, err := net.Listen("tcp", ":50051")

	if err != nil {
		log.Fatalf("Failed to listen: %v", err)
	}

	s := grpc.NewServer()

	pb.RegisterCalculatorServiceServer(s, &server{})

	if err := s.Serve(lis); err != nil {
		log.Fatalf("Failed to serve: %v", err)
	}
}
