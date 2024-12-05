// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return _Appointment.fromJson(json);
}

/// @nodoc
mixin _$Appointment {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_user_id')
  String get doctorUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_name')
  String get doctorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_specialization')
  String get doctorSpecialization => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor_photo')
  String get doctorPhoto => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String get endTime => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  /// Serializes this Appointment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentCopyWith<Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) then) =
      _$AppointmentCopyWithImpl<$Res, Appointment>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'doctor_user_id') String doctorUserId,
      @JsonKey(name: 'doctor_name') String doctorName,
      @JsonKey(name: 'doctor_specialization') String doctorSpecialization,
      @JsonKey(name: 'doctor_photo') String doctorPhoto,
      DateTime date,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      String location});
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res, $Val extends Appointment>
    implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? doctorUserId = null,
    Object? doctorName = null,
    Object? doctorSpecialization = null,
    Object? doctorPhoto = null,
    Object? date = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? location = null,
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
      doctorSpecialization: null == doctorSpecialization
          ? _value.doctorSpecialization
          : doctorSpecialization // ignore: cast_nullable_to_non_nullable
              as String,
      doctorPhoto: null == doctorPhoto
          ? _value.doctorPhoto
          : doctorPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppointmentImplCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$$AppointmentImplCopyWith(
          _$AppointmentImpl value, $Res Function(_$AppointmentImpl) then) =
      __$$AppointmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'doctor_user_id') String doctorUserId,
      @JsonKey(name: 'doctor_name') String doctorName,
      @JsonKey(name: 'doctor_specialization') String doctorSpecialization,
      @JsonKey(name: 'doctor_photo') String doctorPhoto,
      DateTime date,
      @JsonKey(name: 'start_time') String startTime,
      @JsonKey(name: 'end_time') String endTime,
      String location});
}

/// @nodoc
class __$$AppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentCopyWithImpl<$Res, _$AppointmentImpl>
    implements _$$AppointmentImplCopyWith<$Res> {
  __$$AppointmentImplCopyWithImpl(
      _$AppointmentImpl _value, $Res Function(_$AppointmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? doctorUserId = null,
    Object? doctorName = null,
    Object? doctorSpecialization = null,
    Object? doctorPhoto = null,
    Object? date = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? location = null,
  }) {
    return _then(_$AppointmentImpl(
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
      doctorSpecialization: null == doctorSpecialization
          ? _value.doctorSpecialization
          : doctorSpecialization // ignore: cast_nullable_to_non_nullable
              as String,
      doctorPhoto: null == doctorPhoto
          ? _value.doctorPhoto
          : doctorPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentImpl extends _Appointment {
  const _$AppointmentImpl(
      {required this.id,
      @JsonKey(name: 'doctor_user_id') required this.doctorUserId,
      @JsonKey(name: 'doctor_name') required this.doctorName,
      @JsonKey(name: 'doctor_specialization')
      required this.doctorSpecialization,
      @JsonKey(name: 'doctor_photo') required this.doctorPhoto,
      required this.date,
      @JsonKey(name: 'start_time') required this.startTime,
      @JsonKey(name: 'end_time') required this.endTime,
      required this.location})
      : super._();

  factory _$AppointmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'doctor_user_id')
  final String doctorUserId;
  @override
  @JsonKey(name: 'doctor_name')
  final String doctorName;
  @override
  @JsonKey(name: 'doctor_specialization')
  final String doctorSpecialization;
  @override
  @JsonKey(name: 'doctor_photo')
  final String doctorPhoto;
  @override
  final DateTime date;
  @override
  @JsonKey(name: 'start_time')
  final String startTime;
  @override
  @JsonKey(name: 'end_time')
  final String endTime;
  @override
  final String location;

  @override
  String toString() {
    return 'Appointment(id: $id, doctorUserId: $doctorUserId, doctorName: $doctorName, doctorSpecialization: $doctorSpecialization, doctorPhoto: $doctorPhoto, date: $date, startTime: $startTime, endTime: $endTime, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.doctorUserId, doctorUserId) ||
                other.doctorUserId == doctorUserId) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            (identical(other.doctorSpecialization, doctorSpecialization) ||
                other.doctorSpecialization == doctorSpecialization) &&
            (identical(other.doctorPhoto, doctorPhoto) ||
                other.doctorPhoto == doctorPhoto) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, doctorUserId, doctorName,
      doctorSpecialization, doctorPhoto, date, startTime, endTime, location);

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      __$$AppointmentImplCopyWithImpl<_$AppointmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentImplToJson(
      this,
    );
  }
}

abstract class _Appointment extends Appointment {
  const factory _Appointment(
      {required final int id,
      @JsonKey(name: 'doctor_user_id') required final String doctorUserId,
      @JsonKey(name: 'doctor_name') required final String doctorName,
      @JsonKey(name: 'doctor_specialization')
      required final String doctorSpecialization,
      @JsonKey(name: 'doctor_photo') required final String doctorPhoto,
      required final DateTime date,
      @JsonKey(name: 'start_time') required final String startTime,
      @JsonKey(name: 'end_time') required final String endTime,
      required final String location}) = _$AppointmentImpl;
  const _Appointment._() : super._();

  factory _Appointment.fromJson(Map<String, dynamic> json) =
      _$AppointmentImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'doctor_user_id')
  String get doctorUserId;
  @override
  @JsonKey(name: 'doctor_name')
  String get doctorName;
  @override
  @JsonKey(name: 'doctor_specialization')
  String get doctorSpecialization;
  @override
  @JsonKey(name: 'doctor_photo')
  String get doctorPhoto;
  @override
  DateTime get date;
  @override
  @JsonKey(name: 'start_time')
  String get startTime;
  @override
  @JsonKey(name: 'end_time')
  String get endTime;
  @override
  String get location;

  /// Create a copy of Appointment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
