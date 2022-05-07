// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'osimen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OsimenStateDataTearOff {
  const _$OsimenStateDataTearOff();

  _OsimenStateData call(
      {bool isLoading = false,
      bool isReadyData = false,
      List<OsimenItemData> osimenItems = const []}) {
    return _OsimenStateData(
      isLoading: isLoading,
      isReadyData: isReadyData,
      osimenItems: osimenItems,
    );
  }
}

/// @nodoc
const $OsimenStateData = _$OsimenStateDataTearOff();

/// @nodoc
mixin _$OsimenStateData {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isReadyData => throw _privateConstructorUsedError;
  List<OsimenItemData> get osimenItems => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OsimenStateDataCopyWith<OsimenStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OsimenStateDataCopyWith<$Res> {
  factory $OsimenStateDataCopyWith(
          OsimenStateData value, $Res Function(OsimenStateData) then) =
      _$OsimenStateDataCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading, bool isReadyData, List<OsimenItemData> osimenItems});
}

/// @nodoc
class _$OsimenStateDataCopyWithImpl<$Res>
    implements $OsimenStateDataCopyWith<$Res> {
  _$OsimenStateDataCopyWithImpl(this._value, this._then);

  final OsimenStateData _value;
  // ignore: unused_field
  final $Res Function(OsimenStateData) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isReadyData = freezed,
    Object? osimenItems = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadyData: isReadyData == freezed
          ? _value.isReadyData
          : isReadyData // ignore: cast_nullable_to_non_nullable
              as bool,
      osimenItems: osimenItems == freezed
          ? _value.osimenItems
          : osimenItems // ignore: cast_nullable_to_non_nullable
              as List<OsimenItemData>,
    ));
  }
}

/// @nodoc
abstract class _$OsimenStateDataCopyWith<$Res>
    implements $OsimenStateDataCopyWith<$Res> {
  factory _$OsimenStateDataCopyWith(
          _OsimenStateData value, $Res Function(_OsimenStateData) then) =
      __$OsimenStateDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading, bool isReadyData, List<OsimenItemData> osimenItems});
}

/// @nodoc
class __$OsimenStateDataCopyWithImpl<$Res>
    extends _$OsimenStateDataCopyWithImpl<$Res>
    implements _$OsimenStateDataCopyWith<$Res> {
  __$OsimenStateDataCopyWithImpl(
      _OsimenStateData _value, $Res Function(_OsimenStateData) _then)
      : super(_value, (v) => _then(v as _OsimenStateData));

  @override
  _OsimenStateData get _value => super._value as _OsimenStateData;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isReadyData = freezed,
    Object? osimenItems = freezed,
  }) {
    return _then(_OsimenStateData(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isReadyData: isReadyData == freezed
          ? _value.isReadyData
          : isReadyData // ignore: cast_nullable_to_non_nullable
              as bool,
      osimenItems: osimenItems == freezed
          ? _value.osimenItems
          : osimenItems // ignore: cast_nullable_to_non_nullable
              as List<OsimenItemData>,
    ));
  }
}

/// @nodoc

class _$_OsimenStateData implements _OsimenStateData {
  _$_OsimenStateData(
      {this.isLoading = false,
      this.isReadyData = false,
      this.osimenItems = const []});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool isReadyData;
  @JsonKey()
  @override
  final List<OsimenItemData> osimenItems;

  @override
  String toString() {
    return 'OsimenStateData(isLoading: $isLoading, isReadyData: $isReadyData, osimenItems: $osimenItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OsimenStateData &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isReadyData, isReadyData) &&
            const DeepCollectionEquality()
                .equals(other.osimenItems, osimenItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isReadyData),
      const DeepCollectionEquality().hash(osimenItems));

  @JsonKey(ignore: true)
  @override
  _$OsimenStateDataCopyWith<_OsimenStateData> get copyWith =>
      __$OsimenStateDataCopyWithImpl<_OsimenStateData>(this, _$identity);
}

abstract class _OsimenStateData implements OsimenStateData {
  factory _OsimenStateData(
      {bool isLoading,
      bool isReadyData,
      List<OsimenItemData> osimenItems}) = _$_OsimenStateData;

  @override
  bool get isLoading;
  @override
  bool get isReadyData;
  @override
  List<OsimenItemData> get osimenItems;
  @override
  @JsonKey(ignore: true)
  _$OsimenStateDataCopyWith<_OsimenStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TempOsimenItemDataTearOff {
  const _$TempOsimenItemDataTearOff();

  _TempOsimenItemData call(
      {String name = '',
      String twitter = '',
      String instagram = '',
      String facebook = '',
      String tiktok = '',
      String youtube = '',
      String blog = ''}) {
    return _TempOsimenItemData(
      name: name,
      twitter: twitter,
      instagram: instagram,
      facebook: facebook,
      tiktok: tiktok,
      youtube: youtube,
      blog: blog,
    );
  }
}

/// @nodoc
const $TempOsimenItemData = _$TempOsimenItemDataTearOff();

/// @nodoc
mixin _$TempOsimenItemData {
  String get name => throw _privateConstructorUsedError;
  String get twitter => throw _privateConstructorUsedError;
  String get instagram => throw _privateConstructorUsedError;
  String get facebook => throw _privateConstructorUsedError;
  String get tiktok => throw _privateConstructorUsedError;
  String get youtube => throw _privateConstructorUsedError;
  String get blog => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TempOsimenItemDataCopyWith<TempOsimenItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempOsimenItemDataCopyWith<$Res> {
  factory $TempOsimenItemDataCopyWith(
          TempOsimenItemData value, $Res Function(TempOsimenItemData) then) =
      _$TempOsimenItemDataCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String twitter,
      String instagram,
      String facebook,
      String tiktok,
      String youtube,
      String blog});
}

/// @nodoc
class _$TempOsimenItemDataCopyWithImpl<$Res>
    implements $TempOsimenItemDataCopyWith<$Res> {
  _$TempOsimenItemDataCopyWithImpl(this._value, this._then);

  final TempOsimenItemData _value;
  // ignore: unused_field
  final $Res Function(TempOsimenItemData) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? twitter = freezed,
    Object? instagram = freezed,
    Object? facebook = freezed,
    Object? tiktok = freezed,
    Object? youtube = freezed,
    Object? blog = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      twitter: twitter == freezed
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String,
      instagram: instagram == freezed
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String,
      facebook: facebook == freezed
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String,
      tiktok: tiktok == freezed
          ? _value.tiktok
          : tiktok // ignore: cast_nullable_to_non_nullable
              as String,
      youtube: youtube == freezed
          ? _value.youtube
          : youtube // ignore: cast_nullable_to_non_nullable
              as String,
      blog: blog == freezed
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TempOsimenItemDataCopyWith<$Res>
    implements $TempOsimenItemDataCopyWith<$Res> {
  factory _$TempOsimenItemDataCopyWith(
          _TempOsimenItemData value, $Res Function(_TempOsimenItemData) then) =
      __$TempOsimenItemDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String twitter,
      String instagram,
      String facebook,
      String tiktok,
      String youtube,
      String blog});
}

/// @nodoc
class __$TempOsimenItemDataCopyWithImpl<$Res>
    extends _$TempOsimenItemDataCopyWithImpl<$Res>
    implements _$TempOsimenItemDataCopyWith<$Res> {
  __$TempOsimenItemDataCopyWithImpl(
      _TempOsimenItemData _value, $Res Function(_TempOsimenItemData) _then)
      : super(_value, (v) => _then(v as _TempOsimenItemData));

  @override
  _TempOsimenItemData get _value => super._value as _TempOsimenItemData;

  @override
  $Res call({
    Object? name = freezed,
    Object? twitter = freezed,
    Object? instagram = freezed,
    Object? facebook = freezed,
    Object? tiktok = freezed,
    Object? youtube = freezed,
    Object? blog = freezed,
  }) {
    return _then(_TempOsimenItemData(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      twitter: twitter == freezed
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String,
      instagram: instagram == freezed
          ? _value.instagram
          : instagram // ignore: cast_nullable_to_non_nullable
              as String,
      facebook: facebook == freezed
          ? _value.facebook
          : facebook // ignore: cast_nullable_to_non_nullable
              as String,
      tiktok: tiktok == freezed
          ? _value.tiktok
          : tiktok // ignore: cast_nullable_to_non_nullable
              as String,
      youtube: youtube == freezed
          ? _value.youtube
          : youtube // ignore: cast_nullable_to_non_nullable
              as String,
      blog: blog == freezed
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TempOsimenItemData implements _TempOsimenItemData {
  _$_TempOsimenItemData(
      {this.name = '',
      this.twitter = '',
      this.instagram = '',
      this.facebook = '',
      this.tiktok = '',
      this.youtube = '',
      this.blog = ''});

  @JsonKey()
  @override
  final String name;
  @JsonKey()
  @override
  final String twitter;
  @JsonKey()
  @override
  final String instagram;
  @JsonKey()
  @override
  final String facebook;
  @JsonKey()
  @override
  final String tiktok;
  @JsonKey()
  @override
  final String youtube;
  @JsonKey()
  @override
  final String blog;

  @override
  String toString() {
    return 'TempOsimenItemData(name: $name, twitter: $twitter, instagram: $instagram, facebook: $facebook, tiktok: $tiktok, youtube: $youtube, blog: $blog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TempOsimenItemData &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.twitter, twitter) &&
            const DeepCollectionEquality().equals(other.instagram, instagram) &&
            const DeepCollectionEquality().equals(other.facebook, facebook) &&
            const DeepCollectionEquality().equals(other.tiktok, tiktok) &&
            const DeepCollectionEquality().equals(other.youtube, youtube) &&
            const DeepCollectionEquality().equals(other.blog, blog));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(twitter),
      const DeepCollectionEquality().hash(instagram),
      const DeepCollectionEquality().hash(facebook),
      const DeepCollectionEquality().hash(tiktok),
      const DeepCollectionEquality().hash(youtube),
      const DeepCollectionEquality().hash(blog));

  @JsonKey(ignore: true)
  @override
  _$TempOsimenItemDataCopyWith<_TempOsimenItemData> get copyWith =>
      __$TempOsimenItemDataCopyWithImpl<_TempOsimenItemData>(this, _$identity);
}

abstract class _TempOsimenItemData implements TempOsimenItemData {
  factory _TempOsimenItemData(
      {String name,
      String twitter,
      String instagram,
      String facebook,
      String tiktok,
      String youtube,
      String blog}) = _$_TempOsimenItemData;

  @override
  String get name;
  @override
  String get twitter;
  @override
  String get instagram;
  @override
  String get facebook;
  @override
  String get tiktok;
  @override
  String get youtube;
  @override
  String get blog;
  @override
  @JsonKey(ignore: true)
  _$TempOsimenItemDataCopyWith<_TempOsimenItemData> get copyWith =>
      throw _privateConstructorUsedError;
}
