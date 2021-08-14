///
//  Generated code. Do not modify.
//  source: calculator/calculatorpb/calculator.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class SumRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SumRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'calculator'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secondNumber', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SumRequest._() : super();
  factory SumRequest({
    $core.int? firstNumber,
    $core.int? secondNumber,
  }) {
    final _result = create();
    if (firstNumber != null) {
      _result.firstNumber = firstNumber;
    }
    if (secondNumber != null) {
      _result.secondNumber = secondNumber;
    }
    return _result;
  }
  factory SumRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SumRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SumRequest clone() => SumRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SumRequest copyWith(void Function(SumRequest) updates) => super.copyWith((message) => updates(message as SumRequest)) as SumRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SumRequest create() => SumRequest._();
  SumRequest createEmptyInstance() => create();
  static $pb.PbList<SumRequest> createRepeated() => $pb.PbList<SumRequest>();
  @$core.pragma('dart2js:noInline')
  static SumRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SumRequest>(create);
  static SumRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get firstNumber => $_getIZ(0);
  @$pb.TagNumber(1)
  set firstNumber($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFirstNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirstNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get secondNumber => $_getIZ(1);
  @$pb.TagNumber(2)
  set secondNumber($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSecondNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecondNumber() => clearField(2);
}

class SumResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SumResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'calculator'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sumResult', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SumResponse._() : super();
  factory SumResponse({
    $core.int? sumResult,
  }) {
    final _result = create();
    if (sumResult != null) {
      _result.sumResult = sumResult;
    }
    return _result;
  }
  factory SumResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SumResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SumResponse clone() => SumResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SumResponse copyWith(void Function(SumResponse) updates) => super.copyWith((message) => updates(message as SumResponse)) as SumResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SumResponse create() => SumResponse._();
  SumResponse createEmptyInstance() => create();
  static $pb.PbList<SumResponse> createRepeated() => $pb.PbList<SumResponse>();
  @$core.pragma('dart2js:noInline')
  static SumResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SumResponse>(create);
  static SumResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sumResult => $_getIZ(0);
  @$pb.TagNumber(1)
  set sumResult($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSumResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearSumResult() => clearField(1);
}

class PrimeNumberDecompositionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PrimeNumberDecompositionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'calculator'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'number')
    ..hasRequiredFields = false
  ;

  PrimeNumberDecompositionRequest._() : super();
  factory PrimeNumberDecompositionRequest({
    $fixnum.Int64? number,
  }) {
    final _result = create();
    if (number != null) {
      _result.number = number;
    }
    return _result;
  }
  factory PrimeNumberDecompositionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrimeNumberDecompositionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrimeNumberDecompositionRequest clone() => PrimeNumberDecompositionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrimeNumberDecompositionRequest copyWith(void Function(PrimeNumberDecompositionRequest) updates) => super.copyWith((message) => updates(message as PrimeNumberDecompositionRequest)) as PrimeNumberDecompositionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PrimeNumberDecompositionRequest create() => PrimeNumberDecompositionRequest._();
  PrimeNumberDecompositionRequest createEmptyInstance() => create();
  static $pb.PbList<PrimeNumberDecompositionRequest> createRepeated() => $pb.PbList<PrimeNumberDecompositionRequest>();
  @$core.pragma('dart2js:noInline')
  static PrimeNumberDecompositionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrimeNumberDecompositionRequest>(create);
  static PrimeNumberDecompositionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get number => $_getI64(0);
  @$pb.TagNumber(1)
  set number($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumber() => clearField(1);
}

class PrimeNumberDecompositionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PrimeNumberDecompositionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'calculator'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'primeFactor')
    ..hasRequiredFields = false
  ;

  PrimeNumberDecompositionResponse._() : super();
  factory PrimeNumberDecompositionResponse({
    $fixnum.Int64? primeFactor,
  }) {
    final _result = create();
    if (primeFactor != null) {
      _result.primeFactor = primeFactor;
    }
    return _result;
  }
  factory PrimeNumberDecompositionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrimeNumberDecompositionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrimeNumberDecompositionResponse clone() => PrimeNumberDecompositionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrimeNumberDecompositionResponse copyWith(void Function(PrimeNumberDecompositionResponse) updates) => super.copyWith((message) => updates(message as PrimeNumberDecompositionResponse)) as PrimeNumberDecompositionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PrimeNumberDecompositionResponse create() => PrimeNumberDecompositionResponse._();
  PrimeNumberDecompositionResponse createEmptyInstance() => create();
  static $pb.PbList<PrimeNumberDecompositionResponse> createRepeated() => $pb.PbList<PrimeNumberDecompositionResponse>();
  @$core.pragma('dart2js:noInline')
  static PrimeNumberDecompositionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrimeNumberDecompositionResponse>(create);
  static PrimeNumberDecompositionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get primeFactor => $_getI64(0);
  @$pb.TagNumber(1)
  set primeFactor($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPrimeFactor() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrimeFactor() => clearField(1);
}

