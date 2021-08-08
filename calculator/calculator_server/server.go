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
