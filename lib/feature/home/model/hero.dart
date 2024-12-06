import 'package:freezed_annotation/freezed_annotation.dart';

part 'hero.freezed.dart';
part 'hero.g.dart';

@freezed
class Hero with _$Hero {
  const Hero._();

  const factory Hero({
    required int id,
    @JsonKey(name: 'image_url') required String imageUrl,
    @JsonKey(name: 'verify_status') required String verifyStatus,
    @JsonKey(name: 'predicted_disease') required String predictedDisease,
    @JsonKey(name: 'diabetes_type') required String diabetesType,
    @JsonKey(name: 'recommended_examination')
    required String recommendedExamination,
    @JsonKey(name: 'recommended_notes') required String recommendedNotes,
  }) = _Hero;

  factory Hero.fromJson(Map<String, dynamic> json) => _$HeroFromJson(json);
}
