///
//  Generated code. Do not modify.
//  source: calculator/calculatorpb/calculator.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'calculator.pb.dart' as $0;
export 'calculator.pb.dart';

class CalculatorServiceClient extends $grpc.Client {
  static final _$sum = $grpc.ClientMethod<$0.SumRequest, $0.SumResponse>(
      '/calculator.CalculatorService/Sum',
      ($0.SumRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SumResponse.fromBuffer(value));
  static final _$primeNumberDecomposition = $grpc.ClientMethod<
          $0.PrimeNumberDecompositionRequest,
          $0.PrimeNumberDecompositionResponse>(
      '/calculator.CalculatorService/PrimeNumberDecomposition',
      ($0.PrimeNumberDecompositionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.PrimeNumberDecompositionResponse.fromBuffer(value));

  CalculatorServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.SumResponse> sum($0.SumRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sum, request, options: options);
  }

  $grpc.ResponseStream<$0.PrimeNumberDecompositionResponse>
      primeNumberDecomposition($0.PrimeNumberDecompositionRequest request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$primeNumberDecomposition, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class CalculatorServiceBase extends $grpc.Service {
  $core.String get $name => 'calculator.CalculatorService';

  CalculatorServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SumRequest, $0.SumResponse>(
        'Sum',
        sum_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SumRequest.fromBuffer(value),
        ($0.SumResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PrimeNumberDecompositionRequest,
            $0.PrimeNumberDecompositionResponse>(
        'PrimeNumberDecomposition',
        primeNumberDecomposition_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.PrimeNumberDecompositionRequest.fromBuffer(value),
        ($0.PrimeNumberDecompositionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.SumResponse> sum_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SumRequest> request) async {
    return sum(call, await request);
  }

  $async.Stream<$0.PrimeNumberDecompositionResponse>
      primeNumberDecomposition_Pre($grpc.ServiceCall call,
          $async.Future<$0.PrimeNumberDecompositionRequest> request) async* {
    yield* primeNumberDecomposition(call, await request);
  }

  $async.Future<$0.SumResponse> sum(
      $grpc.ServiceCall call, $0.SumRequest request);
  $async.Stream<$0.PrimeNumberDecompositionResponse> primeNumberDecomposition(
      $grpc.ServiceCall call, $0.PrimeNumberDecompositionRequest request);
}
