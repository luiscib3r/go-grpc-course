package main

import (
	"context"
	"fmt"
	"io"
	"log"

	pb "github.com/correaleyval/grpc-go-course/calculator/calculatorpb"
	"google.golang.org/grpc"
)

func main() {
	fmt.Println("Calculator Client")

	conn, err := grpc.Dial("localhost:50051", grpc.WithInsecure())

	if err != nil {
		log.Fatalf("Could not connect: %v", err)
	}

	defer conn.Close()

	c := pb.NewCalculatorServiceClient(conn)
	// fmt.Printf("Created client: %f", c)

	doUnary(c)
	doServerStreaming(c)
}

func doUnary(c pb.CalculatorServiceClient) {
	fmt.Println("Starting to do a Sum Unary RPC...")

	req := &pb.SumRequest{
		FirstNumber: 40,
		SecondNumber: 2,
	}

	res, err := c.Sum(context.Background(), req)

	if err != nil {
		log.Fatalf("Error while calling Sum RPC: %v", err)
	}

	log.Printf("Response %v\n", res)
}

func doServerStreaming(c pb.CalculatorServiceClient) {
	fmt.Println("Starting to do a Sum ServerStreaming RPC...")

	req := &pb.PrimeNumberDecompositionRequest{
		Number: 12390392840,
	}

	stream, err := c.PrimeNumberDecomposition(context.Background(), req)

	if err != nil {
		log.Fatalf("Error while calling Sum RPC: %v", err)
	}

	for {
		res, err := stream.Recv()

		if err == io.EOF {
			break
		}

		if err != nil {
			log.Fatalf("Error while calling Sum RPC: %v", err)
		}

		log.Printf("Response %v\n", res)
	}
}
