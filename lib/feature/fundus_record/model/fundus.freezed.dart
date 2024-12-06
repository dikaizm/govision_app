// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fundus.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Fundus _$FundusFromJson(Map<String, dynamic> json) {
  return _Fundus.fromJson(json);
}

/// @nodoc
mixin _$Fundus {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'verify_status')
  String get verifyStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'predicted_disease')
  String get predictedDisease => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  List<FundusFeedback> get feedbacks => throw _privateConstructorUsedError;

  /// Serializes this Fundus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Fundus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FundusCopyWith<Fundus> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FundusCopyWith<$Res> {
  factory $FundusCopyWith(Fundus value, $Res Function(Fundus) then) =
      _$FundusCopyWithImpl<$Res, Fundus>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'verify_status') String verifyStatus,
      @JsonKey(name: 'predicted_disease') String predictedDisease,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      List<FundusFeedback> feedbacks});
}

/// @nodoc
class _$FundusCopyWithImpl<$Res, $Val extends Fundus>
    implements $FundusCopyWith<$Res> {
  _$FundusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Fundus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? verifyStatus = null,
    Object? predictedDisease = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? feedbacks = null,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      feedbacks: null == feedbacks
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<FundusFeedback>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FundusImplCopyWith<$Res> implements $FundusCopyWith<$Res> {
  factory _$$FundusImplCopyWith(
          _$FundusImpl value, $Res Function(_$FundusImpl) then) =
      __$$FundusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'image_url') String imageUrl,
      @JsonKey(name: 'verify_status') String verifyStatus,
      @JsonKey(name: 'predicted_disease') String predictedDisease,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      List<FundusFeedback> feedbacks});
}

/// @nodoc
class __$$FundusImplCopyWithImpl<$Res>
    extends _$FundusCopyWithImpl<$Res, _$FundusImpl>
    implements _$$FundusImplCopyWith<$Res> {
  __$$FundusImplCopyWithImpl(
      _$FundusImpl _value, $Res Function(_$FundusImpl) _then)
      : super(_value, _then);

  /// Create a copy of Fundus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrl = null,
    Object? verifyStatus = null,
    Object? predictedDisease = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? feedbacks = null,
  }) {
    return _then(_$FundusImpl(
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      feedbacks: null == feedbacks
          ? _value._feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<FundusFeedback>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FundusImpl extends _Fundus {
  const _$FundusImpl(
      {required this.id,
      @JsonKey(name: 'image_url') required this.imageUrl,
      @JsonKey(name: 'verify_status') required this.verifyStatus,
      @JsonKey(name: 'predicted_disease') required this.predictedDisease,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required final List<FundusFeedback> feedbacks})
      : _feedbacks = feedbacks,
        super._();

  factory _$FundusImpl.fromJson(Map<String, dynamic> json) =>
      _$$FundusImplFromJson(json);

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
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  final List<FundusFeedback> _feedbacks;
  @override
  List<FundusFeedback> get feedbacks {
    if (_feedbacks is EqualUnmodifiableListView) return _feedbacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feedbacks);
  }

  @override
  String toString() {
    return 'Fundus(id: $id, imageUrl: $imageUrl, verifyStatus: $verifyStatus, predictedDisease: $predictedDisease, createdAt: $createdAt, updatedAt: $updatedAt, feedbacks: $feedbacks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FundusImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.verifyStatus, verifyStatus) ||
                other.verifyStatus == verifyStatus) &&
            (identical(other.predictedDisease, predictedDisease) ||
                other.predictedDisease == predictedDisease) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._feedbacks, _feedbacks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      imageUrl,
      verifyStatus,
      predictedDisease,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_feedbacks));

  /// Create a copy of Fundus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FundusImplCopyWith<_$FundusImpl> get copyWith =>
      __$$FundusImplCopyWithImpl<_$FundusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FundusImplToJson(
      this,
    );
  }
}

abstract class _Fundus extends Fundus {
  const factory _Fundus(
      {required final int id,
      @JsonKey(name: 'image_url') required final String imageUrl,
      @JsonKey(name: 'verify_status') required final String verifyStatus,
      @JsonKey(name: 'predicted_disease')
      required final String predictedDisease,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'updated_at') required final String updatedAt,
      required final List<FundusFeedback> feedbacks}) = _$FundusImpl;
  const _Fundus._() : super._();

  factory _Fundus.fromJson(Map<String, dynamic> json) = _$FundusImpl.fromJson;

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
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  List<FundusFeedback> get feedbacks;

  /// Create a copy of Fundus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FundusImplCopyWith<_$FundusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FundusFeedback _$FundusFeedbackFromJson(Map<String, dynamic> json) {
  return _FundusFeedback.fromJson(json);
}

/// @nodoc
mixin _$FundusFeedback {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_user_id')
  String get doctorUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_name')
  String get doctorName => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this FundusFeedback to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FundusFeedback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FundusFeedbackCopyWith<FundusFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FundusFeedbackCopyWith<$Res> {
  factory $FundusFeedbackCopyWith(
          FundusFeedback value, $Res Function(FundusFeedback) then) =
      _$FundusFeedbackCopyWithImpl<$Res, FundusFeedback>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'doctor_user_id') String doctorUserId,
      @JsonKey(name: 'doctor_name') String doctorName,
      String notes,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$FundusFeedbackCopyWithImpl<$Res, $Val extends FundusFeedback>
    implements $FundusFeedbackCopyWith<$Res> {
  _$FundusFeedbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FundusFeedback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? doctorUserId = null,
    Object? doctorName = null,
    Object? notes = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      doctorUserId: null == doctorUserId
          ? _value.doctorUserId
          : doctorUserId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorName: null == doctorName
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FundusFeedbackImplCopyWith<$Res>
    implements $FundusFeedbackCopyWith<$Res> {
  factory _$$FundusFeedbackImplCopyWith(_$FundusFeedbackImpl value,
          $Res Function(_$FundusFeedbackImpl) then) =
      __$$FundusFeedbackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'doctor_user_id') String doctorUserId,
      @JsonKey(name: 'doctor_name') String doctorName,
      String notes,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$$FundusFeedbackImplCopyWithImpl<$Res>
    extends _$FundusFeedbackCopyWithImpl<$Res, _$FundusFeedbackImpl>
    implements _$$FundusFeedbackImplCopyWith<$Res> {
  __$$FundusFeedbackImplCopyWithImpl(
      _$FundusFeedbackImpl _value, $Res Function(_$FundusFeedbackImpl) _then)
      : super(_value, _then);

  /// Create a copy of FundusFeedback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? doctorUserId = null,
    Object? doctorName = null,
    Object? notes = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$FundusFeedbackImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      doctorUserId: null == doctorUserId
          ? _value.doctorUserId
          : doctorUserId // ignore: cast_nullable_to_non_nullable
              as String,
      doctorName: null == doctorName
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FundusFeedbackImpl implements _FundusFeedback {
  const _$FundusFeedbackImpl(
      {required this.id,
      @JsonKey(name: 'doctor_user_id') required this.doctorUserId,
      @JsonKey(name: 'doctor_name') required this.doctorName,
      required this.notes,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$FundusFeedbackImpl.fromJson(Map<String, dynamic> json) =>
      _$$FundusFeedbackImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'doctor_user_id')
  final String doctorUserId;
  @override
  @JsonKey(name: 'doctor_name')
  final String doctorName;
  @override
  final String notes;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'FundusFeedback(id: $id, doctorUserId: $doctorUserId, doctorName: $doctorName, notes: $notes, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FundusFeedbackImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.doctorUserId, doctorUserId) ||
                other.doctorUserId == doctorUserId) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, doctorUserId, doctorName, notes, createdAt, updatedAt);

  /// Create a copy of FundusFeedback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FundusFeedbackImplCopyWith<_$FundusFeedbackImpl> get copyWith =>
      __$$FundusFeedbackImplCopyWithImpl<_$FundusFeedbackImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FundusFeedbackImplToJson(
      this,
    );
  }
}

abstract class _FundusFeedback implements FundusFeedback {
  const factory _FundusFeedback(
          {required final int id,
          @JsonKey(name: 'doctor_user_id') required final String doctorUserId,
          @JsonKey(name: 'doctor_name') required final String doctorName,
          required final String notes,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt}) =
      _$FundusFeedbackImpl;

  factory _FundusFeedback.fromJson(Map<String, dynamic> json) =
      _$FundusFeedbackImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'doctor_user_id')
  String get doctorUserId;
  @override
  @JsonKey(name: 'doctor_name')
  String get doctorName;
  @override
  String get notes;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of FundusFeedback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FundusFeedbackImplCopyWith<_$FundusFeedbackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
