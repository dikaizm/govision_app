import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_preview.freezed.dart';
part 'doctor_preview.g.dart';

List<DoctorPreview> doctorPreviewsFromJson(List<dynamic> data) =>
    List<DoctorPreview>.from(
        data.map((x) => DoctorPreview.fromJson(x as Map<String, dynamic>)));

DoctorPreview doctorPreviewFromJson(String str) =>
    DoctorPreview.fromJson(json.decode(str) as Map<String, dynamic>);

@freezed
class DoctorPreview with _$DoctorPreview {
  const factory DoctorPreview({
    @JsonKey(name: 'user_id') required String userId,
    required String name,
    String? photo,
    required String specialization,
    required double rating,
    @JsonKey(name: 'work_years') required int workYears,
    required String city,
    required String province,
  }) = _DoctorPreview;

  factory DoctorPreview.fromJson(Map<String, dynamic> json) =>
      _$DoctorPreviewFromJson(json);
}
