// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PatientProfile _$PatientProfileFromJson(Map<String, dynamic> json) {
  return _PatientProfile.fromJson(json);
}

/// @nodoc
mixin _$PatientProfile {
  @JsonKey(name: 'diabetes_history')
  bool get diabetesHistory => throw _privateConstructorUsedError;
  @JsonKey(name: 'diabetes_type')
  String? get diabetesType => throw _privateConstructorUsedError;
  @JsonKey(name: 'diagnosis_date')
  String? get diagnosisDate => throw _privateConstructorUsedError;

  /// Serializes this PatientProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PatientProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PatientProfileCopyWith<PatientProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientProfileCopyWith<$Res> {
  factory $PatientProfileCopyWith(
          PatientProfile value, $Res Function(PatientProfile) then) =
      _$PatientProfileCopyWithImpl<$Res, PatientProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'diabetes_history') bool diabetesHistory,
      @JsonKey(name: 'diabetes_type') String? diabetesType,
      @JsonKey(name: 'diagnosis_date') String? diagnosisDate});
}

/// @nodoc
class _$PatientProfileCopyWithImpl<$Res, $Val extends PatientProfile>
    implements $PatientProfileCopyWith<$Res> {
  _$PatientProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PatientProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diabetesHistory = null,
    Object? diabetesType = freezed,
    Object? diagnosisDate = freezed,
  }) {
    return _then(_value.copyWith(
      diabetesHistory: null == diabetesHistory
          ? _value.diabetesHistory
          : diabetesHistory // ignore: cast_nullable_to_non_nullable
              as bool,
      diabetesType: freezed == diabetesType
          ? _value.diabetesType
          : diabetesType // ignore: cast_nullable_to_non_nullable
              as String?,
      diagnosisDate: freezed == diagnosisDate
          ? _value.diagnosisDate
          : diagnosisDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientProfileImplCopyWith<$Res>
    implements $PatientProfileCopyWith<$Res> {
  factory _$$PatientProfileImplCopyWith(_$PatientProfileImpl value,
          $Res Function(_$PatientProfileImpl) then) =
      __$$PatientProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'diabetes_history') bool diabetesHistory,
      @JsonKey(name: 'diabetes_type') String? diabetesType,
      @JsonKey(name: 'diagnosis_date') String? diagnosisDate});
}

/// @nodoc
class __$$PatientProfileImplCopyWithImpl<$Res>
    extends _$PatientProfileCopyWithImpl<$Res, _$PatientProfileImpl>
    implements _$$PatientProfileImplCopyWith<$Res> {
  __$$PatientProfileImplCopyWithImpl(
      _$PatientProfileImpl _value, $Res Function(_$PatientProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of PatientProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diabetesHistory = null,
    Object? diabetesType = freezed,
    Object? diagnosisDate = freezed,
  }) {
    return _then(_$PatientProfileImpl(
      diabetesHistory: null == diabetesHistory
          ? _value.diabetesHistory
          : diabetesHistory // ignore: cast_nullable_to_non_nullable
              as bool,
      diabetesType: freezed == diabetesType
          ? _value.diabetesType
          : diabetesType // ignore: cast_nullable_to_non_nullable
              as String?,
      diagnosisDate: freezed == diagnosisDate
          ? _value.diagnosisDate
          : diagnosisDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientProfileImpl implements _PatientProfile {
  const _$PatientProfileImpl(
      {@JsonKey(name: 'diabetes_history') required this.diabetesHistory,
      @JsonKey(name: 'diabetes_type') this.diabetesType,
      @JsonKey(name: 'diagnosis_date') this.diagnosisDate});

  factory _$PatientProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientProfileImplFromJson(json);

  @override
  @JsonKey(name: 'diabetes_history')
  final bool diabetesHistory;
  @override
  @JsonKey(name: 'diabetes_type')
  final String? diabetesType;
  @override
  @JsonKey(name: 'diagnosis_date')
  final String? diagnosisDate;

  @override
  String toString() {
    return 'PatientProfile(diabetesHistory: $diabetesHistory, diabetesType: $diabetesType, diagnosisDate: $diagnosisDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientProfileImpl &&
            (identical(other.diabetesHistory, diabetesHistory) ||
                other.diabetesHistory == diabetesHistory) &&
            (identical(other.diabetesType, diabetesType) ||
                other.diabetesType == diabetesType) &&
            (identical(other.diagnosisDate, diagnosisDate) ||
                other.diagnosisDate == diagnosisDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, diabetesHistory, diabetesType, diagnosisDate);

  /// Create a copy of PatientProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientProfileImplCopyWith<_$PatientProfileImpl> get copyWith =>
      __$$PatientProfileImplCopyWithImpl<_$PatientProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientProfileImplToJson(
      this,
    );
  }
}

abstract class _PatientProfile implements PatientProfile {
  const factory _PatientProfile(
      {@JsonKey(name: 'diabetes_history') required final bool diabetesHistory,
      @JsonKey(name: 'diabetes_type') final String? diabetesType,
      @JsonKey(name: 'diagnosis_date')
      final String? diagnosisDate}) = _$PatientProfileImpl;

  factory _PatientProfile.fromJson(Map<String, dynamic> json) =
      _$PatientProfileImpl.fromJson;

  @override
  @JsonKey(name: 'diabetes_history')
  bool get diabetesHistory;
  @override
  @JsonKey(name: 'diabetes_type')
  String? get diabetesType;
  @override
  @JsonKey(name: 'diagnosis_date')
  String? get diagnosisDate;

  /// Create a copy of PatientProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PatientProfileImplCopyWith<_$PatientProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
