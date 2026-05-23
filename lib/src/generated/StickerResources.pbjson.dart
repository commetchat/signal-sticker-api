// This is a generated file - do not edit.
//
// Generated from src/protobuf/StickerResources.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use packDescriptor instead')
const Pack$json = {
  '1': 'Pack',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'author', '3': 2, '4': 1, '5': 9, '10': 'author'},
    {
      '1': 'cover',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.signalservice.Pack.Sticker',
      '10': 'cover'
    },
    {
      '1': 'stickers',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.signalservice.Pack.Sticker',
      '10': 'stickers'
    },
  ],
  '3': [Pack_Sticker$json],
};

@$core.Deprecated('Use packDescriptor instead')
const Pack_Sticker$json = {
  '1': 'Sticker',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    {'1': 'emoji', '3': 2, '4': 1, '5': 9, '10': 'emoji'},
  ],
};

/// Descriptor for `Pack`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List packDescriptor = $convert.base64Decode(
    'CgRQYWNrEhQKBXRpdGxlGAEgASgJUgV0aXRsZRIWCgZhdXRob3IYAiABKAlSBmF1dGhvchIxCg'
    'Vjb3ZlchgDIAEoCzIbLnNpZ25hbHNlcnZpY2UuUGFjay5TdGlja2VyUgVjb3ZlchI3CghzdGlj'
    'a2VycxgEIAMoCzIbLnNpZ25hbHNlcnZpY2UuUGFjay5TdGlja2VyUghzdGlja2VycxovCgdTdG'
    'lja2VyEg4KAmlkGAEgASgNUgJpZBIUCgVlbW9qaRgCIAEoCVIFZW1vamk=');
