import 'package:freezed_annotation/freezed_annotation.dart';

part 'article2.freezed.dart';
part 'article2.g.dart';

List<Article2> articles2FromJson(List<dynamic> data) => List<Article2>.from(
    data.map((x) => Article2.fromJson(x as Map<String, dynamic>)));

@freezed
class Article2 with _$Article2 {
  const Article2._();

  const factory Article2({
    required String id,
    required String title,
    required String image,
    @JsonKey(name: 'read_count') required int readCount,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _Article2;

  factory Article2.fromJson(Map<String, dynamic> json) =>
      _$Article2FromJson(json);
}

@freezed
class Article2Detail with _$Article2Detail {
  const factory Article2Detail({
    required String id,
    required String title,
    required String body,
    required String author,
    required String image,
    @JsonKey(name: 'read_count') required int readCount,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _Article2Detail;

  factory Article2Detail.fromJson(Map<String, dynamic> json) =>
      _$Article2DetailFromJson(json);
}
