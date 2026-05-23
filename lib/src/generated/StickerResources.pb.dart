// This is a generated file - do not edit.
//
// Generated from src/protobuf/StickerResources.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Pack_Sticker extends $pb.GeneratedMessage {
  factory Pack_Sticker({
    $core.int? id,
    $core.String? emoji,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (emoji != null) result.emoji = emoji;
    return result;
  }

  Pack_Sticker._();

  factory Pack_Sticker.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Pack_Sticker.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Pack.Sticker',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'signalservice'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'emoji')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pack_Sticker clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pack_Sticker copyWith(void Function(Pack_Sticker) updates) =>
      super.copyWith((message) => updates(message as Pack_Sticker))
          as Pack_Sticker;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Pack_Sticker create() => Pack_Sticker._();
  @$core.override
  Pack_Sticker createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Pack_Sticker getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Pack_Sticker>(create);
  static Pack_Sticker? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get emoji => $_getSZ(1);
  @$pb.TagNumber(2)
  set emoji($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEmoji() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmoji() => $_clearField(2);
}

class Pack extends $pb.GeneratedMessage {
  factory Pack({
    $core.String? title,
    $core.String? author,
    Pack_Sticker? cover,
    $core.Iterable<Pack_Sticker>? stickers,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (author != null) result.author = author;
    if (cover != null) result.cover = cover;
    if (stickers != null) result.stickers.addAll(stickers);
    return result;
  }

  Pack._();

  factory Pack.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Pack.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Pack',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'signalservice'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'author')
    ..aOM<Pack_Sticker>(3, _omitFieldNames ? '' : 'cover',
        subBuilder: Pack_Sticker.create)
    ..pPM<Pack_Sticker>(4, _omitFieldNames ? '' : 'stickers',
        subBuilder: Pack_Sticker.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pack clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pack copyWith(void Function(Pack) updates) =>
      super.copyWith((message) => updates(message as Pack)) as Pack;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Pack create() => Pack._();
  @$core.override
  Pack createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Pack getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pack>(create);
  static Pack? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get author => $_getSZ(1);
  @$pb.TagNumber(2)
  set author($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAuthor() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthor() => $_clearField(2);

  @$pb.TagNumber(3)
  Pack_Sticker get cover => $_getN(2);
  @$pb.TagNumber(3)
  set cover(Pack_Sticker value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCover() => $_has(2);
  @$pb.TagNumber(3)
  void clearCover() => $_clearField(3);
  @$pb.TagNumber(3)
  Pack_Sticker ensureCover() => $_ensure(2);

  @$pb.TagNumber(4)
  $pb.PbList<Pack_Sticker> get stickers => $_getList(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
