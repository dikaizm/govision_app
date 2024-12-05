// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DoctorProfile _$DoctorProfileFromJson(Map<String, dynamic> json) {
  return _DoctorProfile.fromJson(json);
}

/// @nodoc
mixin _$DoctorProfile {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'str_no')
  String get strNo => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String get institution => throw _privateConstructorUsedError;
  String get specialization => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get province => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_patient')
  int get totalPatient => throw _privateConstructorUsedError;
  @JsonKey(name: 'work_years')
  int get workYears => throw _privateConstructorUsedError;
  @JsonKey(name: 'bio_desc')
  String get bioDesc => throw _privateConstructorUsedError;
  List<Experience> get experiences => throw _privateConstructorUsedError;
  List<Education> get educations => throw _privateConstructorUsedError;
  List<Schedule> get schedules => throw _privateConstructorUsedError;

  /// Serializes this DoctorProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DoctorProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorProfileCopyWith<DoctorProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorProfileCopyWith<$Res> {
  factory $DoctorProfileCopyWith(
          DoctorProfile value, $Res Function(DoctorProfile) then) =
      _$DoctorProfileCopyWithImpl<$Res, DoctorProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      String name,
      @JsonKey(name: 'str_no') String strNo,
      String? photo,
      String institution,
      String specialization,
      String city,
      String province,
      double rating,
      @JsonKey(name: 'total_patient') int totalPatient,
      @JsonKey(name: 'work_years') int workYears,
      @JsonKey(name: 'bio_desc') String bioDesc,
      List<Experience> experiences,
      List<Education> educations,
      List<Schedule> schedules});
}

/// @nodoc
class _$DoctorProfileCopyWithImpl<$Res, $Val extends DoctorProfile>
    implements $DoctorProfileCopyWith<$Res> {
  _$DoctorProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? strNo = null,
    Object? photo = freezed,
    Object? institution = null,
    Object? specialization = null,
    Object? city = null,
    Object? province = null,
    Object? rating = null,
    Object? totalPatient = null,
    Object? workYears = null,
    Object? bioDesc = null,
    Object? experiences = null,
    Object? educations = null,
    Object? schedules = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      strNo: null == strNo
          ? _value.strNo
          : strNo // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      specialization: null == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      totalPatient: null == totalPatient
          ? _value.totalPatient
          : totalPatient // ignore: cast_nullable_to_non_nullable
              as int,
      workYears: null == workYears
          ? _value.workYears
          : workYears // ignore: cast_nullable_to_non_nullable
              as int,
      bioDesc: null == bioDesc
          ? _value.bioDesc
          : bioDesc // ignore: cast_nullable_to_non_nullable
              as String,
      experiences: null == experiences
          ? _value.experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as List<Experience>,
      educations: null == educations
          ? _value.educations
          : educations // ignore: cast_nullable_to_non_nullable
              as List<Education>,
      schedules: null == schedules
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<Schedule>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorProfileImplCopyWith<$Res>
    implements $DoctorProfileCopyWith<$Res> {
  factory _$$DoctorProfileImplCopyWith(
          _$DoctorProfileImpl value, $Res Function(_$DoctorProfileImpl) then) =
      __$$DoctorProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      String name,
      @JsonKey(name: 'str_no') String strNo,
      String? photo,
      String institution,
      String specialization,
      String city,
      String province,
      double rating,
      @JsonKey(name: 'total_patient') int totalPatient,
      @JsonKey(name: 'work_years') int workYears,
      @JsonKey(name: 'bio_desc') String bioDesc,
      List<Experience> experiences,
      List<Education> educations,
      List<Schedule> schedules});
}

/// @nodoc
class __$$DoctorProfileImplCopyWithImpl<$Res>
    extends _$DoctorProfileCopyWithImpl<$Res, _$DoctorProfileImpl>
    implements _$$DoctorProfileImplCopyWith<$Res> {
  __$$DoctorProfileImplCopyWithImpl(
      _$DoctorProfileImpl _value, $Res Function(_$DoctorProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of DoctorProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? name = null,
    Object? strNo = null,
    Object? photo = freezed,
    Object? institution = null,
    Object? specialization = null,
    Object? city = null,
    Object? province = null,
    Object? rating = null,
    Object? totalPatient = null,
    Object? workYears = null,
    Object? bioDesc = null,
    Object? experiences = null,
    Object? educations = null,
    Object? schedules = null,
  }) {
    return _then(_$DoctorProfileImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      strNo: null == strNo
          ? _value.strNo
          : strNo // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      specialization: null == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      totalPatient: null == totalPatient
          ? _value.totalPatient
          : totalPatient // ignore: cast_nullable_to_non_nullable
              as int,
      workYears: null == workYears
          ? _value.workYears
          : workYears // ignore: cast_nullable_to_non_nullable
              as int,
      bioDesc: null == bioDesc
          ? _value.bioDesc
          : bioDesc // ignore: cast_nullable_to_non_nullable
              as String,
      experiences: null == experiences
          ? _value._experiences
          : experiences // ignore: cast_nullable_to_non_nullable
              as List<Experience>,
      educations: null == educations
          ? _value._educations
          : educations // ignore: cast_nullable_to_non_nullable
              as List<Education>,
      schedules: null == schedules
          ? _value._schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as List<Schedule>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorProfileImpl extends _DoctorProfile {
  const _$DoctorProfileImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      required this.name,
      @JsonKey(name: 'str_no') required this.strNo,
      this.photo,
      required this.institution,
      required this.specialization,
      required this.city,
      required this.province,
      required this.rating,
      @JsonKey(name: 'total_patient') required this.totalPatient,
      @JsonKey(name: 'work_years') required this.workYears,
      @JsonKey(name: 'bio_desc') required this.bioDesc,
      required final List<Experience> experiences,
      required final List<Education> educations,
      required final List<Schedule> schedules})
      : _experiences = experiences,
        _educations = educations,
        _schedules = schedules,
        super._();

  factory _$DoctorProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorProfileImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  final String name;
  @override
  @JsonKey(name: 'str_no')
  final String strNo;
  @override
  final String? photo;
  @override
  final String institution;
  @override
  final String specialization;
  @override
  final String city;
  @override
  final String province;
  @override
  final double rating;
  @override
  @JsonKey(name: 'total_patient')
  final int totalPatient;
  @override
  @JsonKey(name: 'work_years')
  final int workYears;
  @override
  @JsonKey(name: 'bio_desc')
  final String bioDesc;
  final List<Experience> _experiences;
  @override
  List<Experience> get experiences {
    if (_experiences is EqualUnmodifiableListView) return _experiences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_experiences);
  }

  final List<Education> _educations;
  @override
  List<Education> get educations {
    if (_educations is EqualUnmodifiableListView) return _educations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_educations);
  }

  final List<Schedule> _schedules;
  @override
  List<Schedule> get schedules {
    if (_schedules is EqualUnmodifiableListView) return _schedules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schedules);
  }

  @override
  String toString() {
    return 'DoctorProfile(userId: $userId, name: $name, strNo: $strNo, photo: $photo, institution: $institution, specialization: $specialization, city: $city, province: $province, rating: $rating, totalPatient: $totalPatient, workYears: $workYears, bioDesc: $bioDesc, experiences: $experiences, educations: $educations, schedules: $schedules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorProfileImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.strNo, strNo) || other.strNo == strNo) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.specialization, specialization) ||
                other.specialization == specialization) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.totalPatient, totalPatient) ||
                other.totalPatient == totalPatient) &&
            (identical(other.workYears, workYears) ||
                other.workYears == workYears) &&
            (identical(other.bioDesc, bioDesc) || other.bioDesc == bioDesc) &&
            const DeepCollectionEquality()
                .equals(other._experiences, _experiences) &&
            const DeepCollectionEquality()
                .equals(other._educations, _educations) &&
            const DeepCollectionEquality()
                .equals(other._schedules, _schedules));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      name,
      strNo,
      photo,
      institution,
      specialization,
      city,
      province,
      rating,
      totalPatient,
      workYears,
      bioDesc,
      const DeepCollectionEquality().hash(_experiences),
      const DeepCollectionEquality().hash(_educations),
      const DeepCollectionEquality().hash(_schedules));

  /// Create a copy of DoctorProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorProfileImplCopyWith<_$DoctorProfileImpl> get copyWith =>
      __$$DoctorProfileImplCopyWithImpl<_$DoctorProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorProfileImplToJson(
      this,
    );
  }
}

abstract class _DoctorProfile extends DoctorProfile {
  const factory _DoctorProfile(
      {@JsonKey(name: 'user_id') required final String userId,
      required final String name,
      @JsonKey(name: 'str_no') required final String strNo,
      final String? photo,
      required final String institution,
      required final String specialization,
      required final String city,
      required final String province,
      required final double rating,
      @JsonKey(name: 'total_patient') required final int totalPatient,
      @JsonKey(name: 'work_years') required final int workYears,
      @JsonKey(name: 'bio_desc') required final String bioDesc,
      required final List<Experience> experiences,
      required final List<Education> educations,
      required final List<Schedule> schedules}) = _$DoctorProfileImpl;
  const _DoctorProfile._() : super._();

  factory _DoctorProfile.fromJson(Map<String, dynamic> json) =
      _$DoctorProfileImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  String get name;
  @override
  @JsonKey(name: 'str_no')
  String get strNo;
  @override
  String? get photo;
  @override
  String get institution;
  @override
  String get specialization;
  @override
  String get city;
  @override
  String get province;
  @override
  double get rating;
  @override
  @JsonKey(name: 'total_patient')
  int get totalPatient;
  @override
  @JsonKey(name: 'work_years')
  int get workYears;
  @override
  @JsonKey(name: 'bio_desc')
  String get bioDesc;
  @override
  List<Experience> get experiences;
  @override
  List<Education> get educations;
  @override
  List<Schedule> get schedules;

  /// Create a copy of DoctorProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorProfileImplCopyWith<_$DoctorProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Experience _$ExperienceFromJson(Map<String, dynamic> json) {
  return _Experience.fromJson(json);
}

/// @nodoc
mixin _$Experience {
  String get institution => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  DateTime get endDate => throw _privateConstructorUsedError;

  /// Serializes this Experience to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Experience
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExperienceCopyWith<Experience> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperienceCopyWith<$Res> {
  factory $ExperienceCopyWith(
          Experience value, $Res Function(Experience) then) =
      _$ExperienceCopyWithImpl<$Res, Experience>;
  @useResult
  $Res call(
      {String institution,
      @JsonKey(name: 'start_date') DateTime startDate,
      @JsonKey(name: 'end_date') DateTime endDate});
}

/// @nodoc
class _$ExperienceCopyWithImpl<$Res, $Val extends Experience>
    implements $ExperienceCopyWith<$Res> {
  _$ExperienceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Experience
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institution = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_value.copyWith(
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExperienceImplCopyWith<$Res>
    implements $ExperienceCopyWith<$Res> {
  factory _$$ExperienceImplCopyWith(
          _$ExperienceImpl value, $Res Function(_$ExperienceImpl) then) =
      __$$ExperienceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String institution,
      @JsonKey(name: 'start_date') DateTime startDate,
      @JsonKey(name: 'end_date') DateTime endDate});
}

/// @nodoc
class __$$ExperienceImplCopyWithImpl<$Res>
    extends _$ExperienceCopyWithImpl<$Res, _$ExperienceImpl>
    implements _$$ExperienceImplCopyWith<$Res> {
  __$$ExperienceImplCopyWithImpl(
      _$ExperienceImpl _value, $Res Function(_$ExperienceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Experience
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? institution = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(_$ExperienceImpl(
      institution: null == institution
          ? _value.institution
          : institution // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExperienceImpl implements _Experience {
  const _$ExperienceImpl(
      {required this.institution,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate});

  factory _$ExperienceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExperienceImplFromJson(json);

  @override
  final String institution;
  @override
  @JsonKey(name: 'start_date')
  final DateTime startDate;
  @override
  @JsonKey(name: 'end_date')
  final DateTime endDate;

  @override
  String toString() {
    return 'Experience(institution: $institution, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExperienceImpl &&
            (identical(other.institution, institution) ||
                other.institution == institution) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, institution, startDate, endDate);

  /// Create a copy of Experience
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExperienceImplCopyWith<_$ExperienceImpl> get copyWith =>
      __$$ExperienceImplCopyWithImpl<_$ExperienceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExperienceImplToJson(
      this,
    );
  }
}

abstract class _Experience implements Experience {
  const factory _Experience(
          {required final String institution,
          @JsonKey(name: 'start_date') required final DateTime startDate,
          @JsonKey(name: 'end_date') required final DateTime endDate}) =
      _$ExperienceImpl;

  factory _Experience.fromJson(Map<String, dynamic> json) =
      _$ExperienceImpl.fromJson;

  @override
  String get institution;
  @override
  @JsonKey(name: 'start_date')
  DateTime get startDate;
  @override
  @JsonKey(name: 'end_date')
  DateTime get endDate;

  /// Create a copy of Experience
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExperienceImplCopyWith<_$ExperienceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Education _$EducationFromJson(Map<String, dynamic> json) {
  return _Education.fromJson(json);
}

/// @nodoc
mixin _$Education {
  String get university => throw _privateConstructorUsedError;
  String get major => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_year')
  int get startYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_year')
  int get endYear => throw _privateConstructorUsedError;

  /// Serializes this Education to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EducationCopyWith<Education> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationCopyWith<$Res> {
  factory $EducationCopyWith(Education value, $Res Function(Education) then) =
      _$EducationCopyWithImpl<$Res, Education>;
  @useResult
  $Res call(
      {String university,
      String major,
      @JsonKey(name: 'start_year') int startYear,
      @JsonKey(name: 'end_year') int endYear});
}

/// @nodoc
class _$EducationCopyWithImpl<$Res, $Val extends Education>
    implements $EducationCopyWith<$Res> {
  _$EducationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? university = null,
    Object? major = null,
    Object? startYear = null,
    Object? endYear = null,
  }) {
    return _then(_value.copyWith(
      university: null == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String,
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String,
      startYear: null == startYear
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as int,
      endYear: null == endYear
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EducationImplCopyWith<$Res>
    implements $EducationCopyWith<$Res> {
  factory _$$EducationImplCopyWith(
          _$EducationImpl value, $Res Function(_$EducationImpl) then) =
      __$$EducationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String university,
      String major,
      @JsonKey(name: 'start_year') int startYear,
      @JsonKey(name: 'end_year') int endYear});
}

/// @nodoc
class __$$EducationImplCopyWithImpl<$Res>
    extends _$EducationCopyWithImpl<$Res, _$EducationImpl>
    implements _$$EducationImplCopyWith<$Res> {
  __$$EducationImplCopyWithImpl(
      _$EducationImpl _value, $Res Function(_$EducationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? university = null,
    Object? major = null,
    Object? startYear = null,
    Object? endYear = null,
  }) {
    return _then(_$EducationImpl(
      university: null == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String,
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String,
      startYear: null == startYear
          ? _value.startYear
          : startYear // ignore: cast_nullable_to_non_nullable
              as int,
      endYear: null == endYear
          ? _value.endYear
          : endYear // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EducationImpl implements _Education {
  const _$EducationImpl(
      {required this.university,
      required this.major,
      @JsonKey(name: 'start_year') required this.startYear,
      @JsonKey(name: 'end_year') required this.endYear});

  factory _$EducationImpl.fromJson(Map<String, dynamic> json) =>
      _$$EducationImplFromJson(json);

  @override
  final String university;
  @override
  final String major;
  @override
  @JsonKey(name: 'start_year')
  final int startYear;
  @override
  @JsonKey(name: 'end_year')
  final int endYear;

  @override
  String toString() {
    return 'Education(university: $university, major: $major, startYear: $startYear, endYear: $endYear)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationImpl &&
            (identical(other.university, university) ||
                other.university == university) &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.startYear, startYear) ||
                other.startYear == startYear) &&
            (identical(other.endYear, endYear) || other.endYear == endYear));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, university, major, startYear, endYear);

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EducationImplCopyWith<_$EducationImpl> get copyWith =>
      __$$EducationImplCopyWithImpl<_$EducationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationImplToJson(
      this,
    );
  }
}

abstract class _Education implements Education {
  const factory _Education(
      {required final String university,
      required final String major,
      @JsonKey(name: 'start_year') required final int startYear,
      @JsonKey(name: 'end_year') required final int endYear}) = _$EducationImpl;

  factory _Education.fromJson(Map<String, dynamic> json) =
      _$EducationImpl.fromJson;

  @override
  String get university;
  @override
  String get major;
  @override
  @JsonKey(name: 'start_year')
  int get startYear;
  @override
  @JsonKey(name: 'end_year')
  int get endYear;

  /// Create a copy of Education
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EducationImplCopyWith<_$EducationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Schedule _$ScheduleFromJson(Map<String, dynamic> json) {
  return _Schedule.fromJson(json);
}

/// @nodoc
mixin _$Schedule {
  DateTime get date => throw _privateConstructorUsedError;

  /// Serializes this Schedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleCopyWith<Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCopyWith<$Res> {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) then) =
      _$ScheduleCopyWithImpl<$Res, Schedule>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class _$ScheduleCopyWithImpl<$Res, $Val extends Schedule>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleImplCopyWith<$Res>
    implements $ScheduleCopyWith<$Res> {
  factory _$$ScheduleImplCopyWith(
          _$ScheduleImpl value, $Res Function(_$ScheduleImpl) then) =
      __$$ScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$ScheduleImplCopyWithImpl<$Res>
    extends _$ScheduleCopyWithImpl<$Res, _$ScheduleImpl>
    implements _$$ScheduleImplCopyWith<$Res> {
  __$$ScheduleImplCopyWithImpl(
      _$ScheduleImpl _value, $Res Function(_$ScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$ScheduleImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleImpl implements _Schedule {
  const _$ScheduleImpl({required this.date});

  factory _$ScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleImplFromJson(json);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'Schedule(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      __$$ScheduleImplCopyWithImpl<_$ScheduleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleImplToJson(
      this,
    );
  }
}

abstract class _Schedule implements Schedule {
  const factory _Schedule({required final DateTime date}) = _$ScheduleImpl;

  factory _Schedule.fromJson(Map<String, dynamic> json) =
      _$ScheduleImpl.fromJson;

  @override
  DateTime get date;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookScheduleParams _$BookScheduleParamsFromJson(Map<String, dynamic> json) {
  return _BookScheduleParams.fromJson(json);
}

/// @nodoc
mixin _$BookScheduleParams {
  @JsonKey(name: 'doctor_user_id')
  String get doctorUserId => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_slot_id')
  int get timeSlotId => throw _privateConstructorUsedError;

  /// Serializes this BookScheduleParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookScheduleParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookScheduleParamsCopyWith<BookScheduleParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookScheduleParamsCopyWith<$Res> {
  factory $BookScheduleParamsCopyWith(
          BookScheduleParams value, $Res Function(BookScheduleParams) then) =
      _$BookScheduleParamsCopyWithImpl<$Res, BookScheduleParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'doctor_user_id') String doctorUserId,
      String date,
      @JsonKey(name: 'time_slot_id') int timeSlotId});
}

/// @nodoc
class _$BookScheduleParamsCopyWithImpl<$Res, $Val extends BookScheduleParams>
    implements $BookScheduleParamsCopyWith<$Res> {
  _$BookScheduleParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookScheduleParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorUserId = null,
    Object? date = null,
    Object? timeSlotId = null,
  }) {
    return _then(_value.copyWith(
      doctorUserId: null == doctorUserId
          ? _value.doctorUserId
          : doctorUserId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      timeSlotId: null == timeSlotId
          ? _value.timeSlotId
          : timeSlotId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookScheduleParamsImplCopyWith<$Res>
    implements $BookScheduleParamsCopyWith<$Res> {
  factory _$$BookScheduleParamsImplCopyWith(_$BookScheduleParamsImpl value,
          $Res Function(_$BookScheduleParamsImpl) then) =
      __$$BookScheduleParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'doctor_user_id') String doctorUserId,
      String date,
      @JsonKey(name: 'time_slot_id') int timeSlotId});
}

/// @nodoc
class __$$BookScheduleParamsImplCopyWithImpl<$Res>
    extends _$BookScheduleParamsCopyWithImpl<$Res, _$BookScheduleParamsImpl>
    implements _$$BookScheduleParamsImplCopyWith<$Res> {
  __$$BookScheduleParamsImplCopyWithImpl(_$BookScheduleParamsImpl _value,
      $Res Function(_$BookScheduleParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookScheduleParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorUserId = null,
    Object? date = null,
    Object? timeSlotId = null,
  }) {
    return _then(_$BookScheduleParamsImpl(
      doctorUserId: null == doctorUserId
          ? _value.doctorUserId
          : doctorUserId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      timeSlotId: null == timeSlotId
          ? _value.timeSlotId
          : timeSlotId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookScheduleParamsImpl implements _BookScheduleParams {
  const _$BookScheduleParamsImpl(
      {@JsonKey(name: 'doctor_user_id') required this.doctorUserId,
      required this.date,
      @JsonKey(name: 'time_slot_id') required this.timeSlotId});

  factory _$BookScheduleParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookScheduleParamsImplFromJson(json);

  @override
  @JsonKey(name: 'doctor_user_id')
  final String doctorUserId;
  @override
  final String date;
  @override
  @JsonKey(name: 'time_slot_id')
  final int timeSlotId;

  @override
  String toString() {
    return 'BookScheduleParams(doctorUserId: $doctorUserId, date: $date, timeSlotId: $timeSlotId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookScheduleParamsImpl &&
            (identical(other.doctorUserId, doctorUserId) ||
                other.doctorUserId == doctorUserId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.timeSlotId, timeSlotId) ||
                other.timeSlotId == timeSlotId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, doctorUserId, date, timeSlotId);

  /// Create a copy of BookScheduleParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookScheduleParamsImplCopyWith<_$BookScheduleParamsImpl> get copyWith =>
      __$$BookScheduleParamsImplCopyWithImpl<_$BookScheduleParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookScheduleParamsImplToJson(
      this,
    );
  }
}

abstract class _BookScheduleParams implements BookScheduleParams {
  const factory _BookScheduleParams(
          {@JsonKey(name: 'doctor_user_id') required final String doctorUserId,
          required final String date,
          @JsonKey(name: 'time_slot_id') required final int timeSlotId}) =
      _$BookScheduleParamsImpl;

  factory _BookScheduleParams.fromJson(Map<String, dynamic> json) =
      _$BookScheduleParamsImpl.fromJson;

  @override
  @JsonKey(name: 'doctor_user_id')
  String get doctorUserId;
  @override
  String get date;
  @override
  @JsonKey(name: 'time_slot_id')
  int get timeSlotId;

  /// Create a copy of BookScheduleParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookScheduleParamsImplCopyWith<_$BookScheduleParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
