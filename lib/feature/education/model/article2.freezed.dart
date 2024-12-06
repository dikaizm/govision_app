// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Article2 _$Article2FromJson(Map<String, dynamic> json) {
  return _Article2.fromJson(json);
}

/// @nodoc
mixin _$Article2 {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'read_count')
  int get readCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Article2 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Article2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Article2CopyWith<Article2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Article2CopyWith<$Res> {
  factory $Article2CopyWith(Article2 value, $Res Function(Article2) then) =
      _$Article2CopyWithImpl<$Res, Article2>;
  @useResult
  $Res call(
      {String id,
      String title,
      String image,
      @JsonKey(name: 'read_count') int readCount,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$Article2CopyWithImpl<$Res, $Val extends Article2>
    implements $Article2CopyWith<$Res> {
  _$Article2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Article2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? readCount = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      readCount: null == readCount
          ? _value.readCount
          : readCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Article2ImplCopyWith<$Res>
    implements $Article2CopyWith<$Res> {
  factory _$$Article2ImplCopyWith(
          _$Article2Impl value, $Res Function(_$Article2Impl) then) =
      __$$Article2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String image,
      @JsonKey(name: 'read_count') int readCount,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$$Article2ImplCopyWithImpl<$Res>
    extends _$Article2CopyWithImpl<$Res, _$Article2Impl>
    implements _$$Article2ImplCopyWith<$Res> {
  __$$Article2ImplCopyWithImpl(
      _$Article2Impl _value, $Res Function(_$Article2Impl) _then)
      : super(_value, _then);

  /// Create a copy of Article2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? readCount = null,
    Object? createdAt = null,
  }) {
    return _then(_$Article2Impl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      readCount: null == readCount
          ? _value.readCount
          : readCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Article2Impl extends _Article2 {
  const _$Article2Impl(
      {required this.id,
      required this.title,
      required this.image,
      @JsonKey(name: 'read_count') required this.readCount,
      @JsonKey(name: 'created_at') required this.createdAt})
      : super._();

  factory _$Article2Impl.fromJson(Map<String, dynamic> json) =>
      _$$Article2ImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String image;
  @override
  @JsonKey(name: 'read_count')
  final int readCount;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'Article2(id: $id, title: $title, image: $image, readCount: $readCount, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Article2Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.readCount, readCount) ||
                other.readCount == readCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, image, readCount, createdAt);

  /// Create a copy of Article2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Article2ImplCopyWith<_$Article2Impl> get copyWith =>
      __$$Article2ImplCopyWithImpl<_$Article2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Article2ImplToJson(
      this,
    );
  }
}

abstract class _Article2 extends Article2 {
  const factory _Article2(
          {required final String id,
          required final String title,
          required final String image,
          @JsonKey(name: 'read_count') required final int readCount,
          @JsonKey(name: 'created_at') required final DateTime createdAt}) =
      _$Article2Impl;
  const _Article2._() : super._();

  factory _Article2.fromJson(Map<String, dynamic> json) =
      _$Article2Impl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get image;
  @override
  @JsonKey(name: 'read_count')
  int get readCount;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Create a copy of Article2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Article2ImplCopyWith<_$Article2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

Article2Detail _$Article2DetailFromJson(Map<String, dynamic> json) {
  return _Article2Detail.fromJson(json);
}

/// @nodoc
mixin _$Article2Detail {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'read_count')
  int get readCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Article2Detail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Article2Detail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Article2DetailCopyWith<Article2Detail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Article2DetailCopyWith<$Res> {
  factory $Article2DetailCopyWith(
          Article2Detail value, $Res Function(Article2Detail) then) =
      _$Article2DetailCopyWithImpl<$Res, Article2Detail>;
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      String author,
      String image,
      @JsonKey(name: 'read_count') int readCount,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$Article2DetailCopyWithImpl<$Res, $Val extends Article2Detail>
    implements $Article2DetailCopyWith<$Res> {
  _$Article2DetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Article2Detail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? author = null,
    Object? image = null,
    Object? readCount = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      readCount: null == readCount
          ? _value.readCount
          : readCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Article2DetailImplCopyWith<$Res>
    implements $Article2DetailCopyWith<$Res> {
  factory _$$Article2DetailImplCopyWith(_$Article2DetailImpl value,
          $Res Function(_$Article2DetailImpl) then) =
      __$$Article2DetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      String author,
      String image,
      @JsonKey(name: 'read_count') int readCount,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$$Article2DetailImplCopyWithImpl<$Res>
    extends _$Article2DetailCopyWithImpl<$Res, _$Article2DetailImpl>
    implements _$$Article2DetailImplCopyWith<$Res> {
  __$$Article2DetailImplCopyWithImpl(
      _$Article2DetailImpl _value, $Res Function(_$Article2DetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of Article2Detail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? author = null,
    Object? image = null,
    Object? readCount = null,
    Object? createdAt = null,
  }) {
    return _then(_$Article2DetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      readCount: null == readCount
          ? _value.readCount
          : readCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Article2DetailImpl implements _Article2Detail {
  const _$Article2DetailImpl(
      {required this.id,
      required this.title,
      required this.body,
      required this.author,
      required this.image,
      @JsonKey(name: 'read_count') required this.readCount,
      @JsonKey(name: 'created_at') required this.createdAt});

  factory _$Article2DetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$Article2DetailImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String body;
  @override
  final String author;
  @override
  final String image;
  @override
  @JsonKey(name: 'read_count')
  final int readCount;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'Article2Detail(id: $id, title: $title, body: $body, author: $author, image: $image, readCount: $readCount, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Article2DetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.readCount, readCount) ||
                other.readCount == readCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, body, author, image, readCount, createdAt);

  /// Create a copy of Article2Detail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Article2DetailImplCopyWith<_$Article2DetailImpl> get copyWith =>
      __$$Article2DetailImplCopyWithImpl<_$Article2DetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Article2DetailImplToJson(
      this,
    );
  }
}

abstract class _Article2Detail implements Article2Detail {
  const factory _Article2Detail(
          {required final String id,
          required final String title,
          required final String body,
          required final String author,
          required final String image,
          @JsonKey(name: 'read_count') required final int readCount,
          @JsonKey(name: 'created_at') required final DateTime createdAt}) =
      _$Article2DetailImpl;

  factory _Article2Detail.fromJson(Map<String, dynamic> json) =
      _$Article2DetailImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get body;
  @override
  String get author;
  @override
  String get image;
  @override
  @JsonKey(name: 'read_count')
  int get readCount;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Create a copy of Article2Detail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Article2DetailImplCopyWith<_$Article2DetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
