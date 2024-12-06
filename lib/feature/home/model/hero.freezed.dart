// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hero.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Hero _$HeroFromJson(Map<String, dynamic> json) {
  return _Hero.fromJson(json);
}

/// @nodoc
mixin _$Hero {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'verify_status')
  String get verifyStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'predicted_disease')
  String get predictedDisease => throw _privateConstructorUsedError;
  @JsonKey(name: 'diabetes_type')
  String get diabetesType => throw _privateConstructorUsedError;
  @JsonKey(name: 'recommended_examination')
  String get recommendedExamination => throw _privateConstructorUsedError;
  @JsonKey(name: 'recommended_notes')
  String get recommendedNotes => throw _privateConstructorUsedError;

  /// Serializes this Hero to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Hero
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeroCopyWith<Hero> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroCopyWith<$Res> {
  factory $HeroCopyWith(Hero value, $Res Function(Hero) then) =
      _$HeroCopyWithImpl<$Res, Hero>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'verify_status') String verifyStatus,
      @JsonKey(name: 'predicted_disease') String predictedDisease,
      @JsonKey(name: 'diabetes_type') String diabetesType,
      @JsonKey(name: 'recommended_examination') String recommendedExamination,
      @JsonKey(name: 'recommended_notes') String recommendedNotes});
}

/// @nodoc
class _$HeroCopyWithImpl<$Res, $Val extends Hero>
    implements $HeroCopyWith<$Res> {
  _$HeroCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Hero
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? verifyStatus = null,
    Object? predictedDisease = null,
    Object? diabetesType = null,
    Object? recommendedExamination = null,
    Object? recommendedNotes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      verifyStatus: null == verifyStatus
          ? _value.verifyStatus
          : verifyStatus // ignore: cast_nullable_to_non_nullable
              as String,
      predictedDisease: null == predictedDisease
          ? _value.predictedDisease
          : predictedDisease // ignore: cast_nullable_to_non_nullable
              as String,
      diabetesType: null == diabetesType
          ? _value.diabetesType
          : diabetesType // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedExamination: null == recommendedExamination
          ? _value.recommendedExamination
          : recommendedExamination // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedNotes: null == recommendedNotes
          ? _value.recommendedNotes
          : recommendedNotes // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeroImplCopyWith<$Res> implements $HeroCopyWith<$Res> {
  factory _$$HeroImplCopyWith(
          _$HeroImpl value, $Res Function(_$HeroImpl) then) =
      __$$HeroImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'verify_status') String verifyStatus,
      @JsonKey(name: 'predicted_disease') String predictedDisease,
      @JsonKey(name: 'diabetes_type') String diabetesType,
      @JsonKey(name: 'recommended_examination') String recommendedExamination,
      @JsonKey(name: 'recommended_notes') String recommendedNotes});
}

/// @nodoc
class __$$HeroImplCopyWithImpl<$Res>
    extends _$HeroCopyWithImpl<$Res, _$HeroImpl>
    implements _$$HeroImplCopyWith<$Res> {
  __$$HeroImplCopyWithImpl(_$HeroImpl _value, $Res Function(_$HeroImpl) _then)
      : super(_value, _then);

  /// Create a copy of Hero
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? verifyStatus = null,
    Object? predictedDisease = null,
    Object? diabetesType = null,
    Object? recommendedExamination = null,
    Object? recommendedNotes = null,
  }) {
    return _then(_$HeroImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      verifyStatus: null == verifyStatus
          ? _value.verifyStatus
          : verifyStatus // ignore: cast_nullable_to_non_nullable
              as String,
      predictedDisease: null == predictedDisease
          ? _value.predictedDisease
          : predictedDisease // ignore: cast_nullable_to_non_nullable
              as String,
      diabetesType: null == diabetesType
          ? _value.diabetesType
          : diabetesType // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedExamination: null == recommendedExamination
          ? _value.recommendedExamination
          : recommendedExamination // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedNotes: null == recommendedNotes
          ? _value.recommendedNotes
          : recommendedNotes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeroImpl extends _Hero {
  const _$HeroImpl(
      {required this.id,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'verify_status') required this.verifyStatus,
      @JsonKey(name: 'predicted_disease') required this.predictedDisease,
      @JsonKey(name: 'diabetes_type') required this.diabetesType,
      @JsonKey(name: 'recommended_examination')
      required this.recommendedExamination,
      @JsonKey(name: 'recommended_notes') required this.recommendedNotes})
      : super._();

  factory _$HeroImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeroImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'verify_status')
  final String verifyStatus;
  @override
  @JsonKey(name: 'predicted_disease')
  final String predictedDisease;
  @override
  @JsonKey(name: 'diabetes_type')
  final String diabetesType;
  @override
  @JsonKey(name: 'recommended_examination')
  final String recommendedExamination;
  @override
  @JsonKey(name: 'recommended_notes')
  final String recommendedNotes;

  @override
  String toString() {
    return 'Hero(id: $id, imageUrl: $imageUrl, verifyStatus: $verifyStatus, predictedDisease: $predictedDisease, diabetesType: $diabetesType, recommendedExamination: $recommendedExamination, recommendedNotes: $recommendedNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeroImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.verifyStatus, verifyStatus) ||
                other.verifyStatus == verifyStatus) &&
            (identical(other.predictedDisease, predictedDisease) ||
                other.predictedDisease == predictedDisease) &&
            (identical(other.diabetesType, diabetesType) ||
                other.diabetesType == diabetesType) &&
            (identical(other.recommendedExamination, recommendedExamination) ||
                other.recommendedExamination == recommendedExamination) &&
            (identical(other.recommendedNotes, recommendedNotes) ||
                other.recommendedNotes == recommendedNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl, verifyStatus,
      predictedDisease, diabetesType, recommendedExamination, recommendedNotes);

  /// Create a copy of Hero
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeroImplCopyWith<_$HeroImpl> get copyWith =>
      __$$HeroImplCopyWithImpl<_$HeroImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeroImplToJson(
      this,
    );
  }
}

abstract class _Hero extends Hero {
  const factory _Hero(
      {required final int id,
      @JsonKey(name: 'image_url') required final String imageUrl,
      @JsonKey(name: 'verify_status') required final String verifyStatus,
      @JsonKey(name: 'predicted_disease')
      required final String predictedDisease,
      @JsonKey(name: 'diabetes_type') required final String diabetesType,
      @JsonKey(name: 'recommended_examination')
      required final String recommendedExamination,
      @JsonKey(name: 'recommended_notes')
      required final String recommendedNotes}) = _$HeroImpl;
  const _Hero._() : super._();

  factory _Hero.fromJson(Map<String, dynamic> json) = _$HeroImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'verify_status')
  String get verifyStatus;
  @override
  @JsonKey(name: 'predicted_disease')
  String get predictedDisease;
  @override
  @JsonKey(name: 'diabetes_type')
  String get diabetesType;
  @override
  @JsonKey(name: 'recommended_examination')
  String get recommendedExamination;
  @override
  @JsonKey(name: 'recommended_notes')
  String get recommendedNotes;

  /// Create a copy of Hero
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeroImplCopyWith<_$HeroImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
