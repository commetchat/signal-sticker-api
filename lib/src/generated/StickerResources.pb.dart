///
//  Generated code. Do not modify.
//  source: StickerResources.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Pack_Sticker extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Pack.Sticker', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'signalservice'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emoji')
    ..hasRequiredFields = false
  ;

  Pack_Sticker._() : super();
  factory Pack_Sticker({
    $core.int? id,
    $core.String? emoji,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (emoji != null) {
      _result.emoji = emoji;
    }
    return _result;
  }
  factory Pack_Sticker.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Pack_Sticker.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Pack_Sticker clone() => Pack_Sticker()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Pack_Sticker copyWith(void Function(Pack_Sticker) updates) => super.copyWith((message) => updates(message as Pack_Sticker)) as Pack_Sticker; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Pack_Sticker create() => Pack_Sticker._();
  Pack_Sticker createEmptyInstance() => create();
  static $pb.PbList<Pack_Sticker> createRepeated() => $pb.PbList<Pack_Sticker>();
  @$core.pragma('dart2js:noInline')
  static Pack_Sticker getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pack_Sticker>(create);
  static Pack_Sticker? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get emoji => $_getSZ(1);
  @$pb.TagNumber(2)
  set emoji($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmoji() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmoji() => clearField(2);
}

class Pack extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Pack', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'signalservice'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'author')
    ..aOM<Pack_Sticker>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cover', subBuilder: Pack_Sticker.create)
    ..pc<Pack_Sticker>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stickers', $pb.PbFieldType.PM, subBuilder: Pack_Sticker.create)
    ..hasRequiredFields = false
  ;

  Pack._() : super();
  factory Pack({
    $core.String? title,
    $core.String? author,
    Pack_Sticker? cover,
    $core.Iterable<Pack_Sticker>? stickers,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (author != null) {
      _result.author = author;
    }
    if (cover != null) {
      _result.cover = cover;
    }
    if (stickers != null) {
      _result.stickers.addAll(stickers);
    }
    return _result;
  }
  factory Pack.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Pack.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Pack clone() => Pack()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Pack copyWith(void Function(Pack) updates) => super.copyWith((message) => updates(message as Pack)) as Pack; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Pack create() => Pack._();
  Pack createEmptyInstance() => create();
  static $pb.PbList<Pack> createRepeated() => $pb.PbList<Pack>();
  @$core.pragma('dart2js:noInline')
  static Pack getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pack>(create);
  static Pack? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get author => $_getSZ(1);
  @$pb.TagNumber(2)
  set author($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthor() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthor() => clearField(2);

  @$pb.TagNumber(3)
  Pack_Sticker get cover => $_getN(2);
  @$pb.TagNumber(3)
  set cover(Pack_Sticker v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCover() => $_has(2);
  @$pb.TagNumber(3)
  void clearCover() => clearField(3);
  @$pb.TagNumber(3)
  Pack_Sticker ensureCover() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<Pack_Sticker> get stickers => $_getList(3);
}

