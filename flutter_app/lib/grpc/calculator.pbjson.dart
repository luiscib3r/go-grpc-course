///
//  Generated code. Do not modify.
//  source: calculator/calculatorpb/calculator.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use sumRequestDescriptor instead')
const SumRequest$json = const {
  '1': 'SumRequest',
  '2': const [
    const {'1': 'first_number', '3': 1, '4': 1, '5': 5, '10': 'firstNumber'},
    const {'1': 'second_number', '3': 2, '4': 1, '5': 5, '10': 'secondNumber'},
  ],
};

/// Descriptor for `SumRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sumRequestDescriptor = $convert.base64Decode('CgpTdW1SZXF1ZXN0EiEKDGZpcnN0X251bWJlchgBIAEoBVILZmlyc3ROdW1iZXISIwoNc2Vjb25kX251bWJlchgCIAEoBVIMc2Vjb25kTnVtYmVy');
@$core.Deprecated('Use sumResponseDescriptor instead')
const SumResponse$json = const {
  '1': 'SumResponse',
  '2': const [
    const {'1': 'sum_result', '3': 1, '4': 1, '5': 5, '10': 'sumResult'},
  ],
};

/// Descriptor for `SumResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sumResponseDescriptor = $convert.base64Decode('CgtTdW1SZXNwb25zZRIdCgpzdW1fcmVzdWx0GAEgASgFUglzdW1SZXN1bHQ=');
@$core.Deprecated('Use primeNumberDecompositionRequestDescriptor instead')
const PrimeNumberDecompositionRequest$json = const {
  '1': 'PrimeNumberDecompositionRequest',
  '2': const [
    const {'1': 'number', '3': 1, '4': 1, '5': 3, '10': 'number'},
  ],
};

/// Descriptor for `PrimeNumberDecompositionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List primeNumberDecompositionRequestDescriptor = $convert.base64Decode('Ch9QcmltZU51bWJlckRlY29tcG9zaXRpb25SZXF1ZXN0EhYKBm51bWJlchgBIAEoA1IGbnVtYmVy');
@$core.Deprecated('Use primeNumberDecompositionResponseDescriptor instead')
const PrimeNumberDecompositionResponse$json = const {
  '1': 'PrimeNumberDecompositionResponse',
  '2': const [
    const {'1': 'prime_factor', '3': 1, '4': 1, '5': 3, '10': 'primeFactor'},
  ],
};

/// Descriptor for `PrimeNumberDecompositionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List primeNumberDecompositionResponseDescriptor = $convert.base64Decode('CiBQcmltZU51bWJlckRlY29tcG9zaXRpb25SZXNwb25zZRIhCgxwcmltZV9mYWN0b3IYASABKANSC3ByaW1lRmFjdG9y');
