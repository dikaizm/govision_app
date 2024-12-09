import 'package:freezed_annotation/freezed_annotation.dart';

part 'fundus.freezed.dart';
part 'fundus.g.dart';

List<Fundus> fundusesFromJson(List<dynamic> data) => List<Fundus>.from(
    data.map((x) => Fundus.fromJson(x as Map<String, dynamic>)));

@freezed
class Fundus with _$Fundus {
  const Fundus._();

  const factory Fundus({
    required int id,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'verify_status') required String verifyStatus,
    @JsonKey(name: 'predicted_disease') required String predictedDisease,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    required List<FundusFeedback> feedbacks,
  }) = _Fundus;

  factory Fundus.fromJson(Map<String, dynamic> json) => _$FundusFromJson(json);
}

@freezed
class FundusFeedback with _$FundusFeedback {
  const factory FundusFeedback({
    required int id,
    @JsonKey(name: 'doctor_user_id') required String doctorUserId,
    @JsonKey(name: 'doctor_name') required String doctorName,
    required String notes,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _FundusFeedback;

  factory FundusFeedback.fromJson(Map<String, dynamic> json) =>
      _$FundusFeedbackFromJson(json);
}
