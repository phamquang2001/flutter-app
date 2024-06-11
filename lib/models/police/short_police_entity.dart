import 'package:json_annotation/json_annotation.dart';

part 'short_police_entity.g.dart';

@JsonSerializable()
class ShortPoliceEntity {
  int id;
  String identifyNumber;
  String fullName;
  int level;
  String levelName;

  ShortPoliceEntity({
    required this.id,
    required this.identifyNumber,
    required this.fullName,
    required this.level,
    required this.levelName,
  });

  factory ShortPoliceEntity.fromJson(Map<String, dynamic> json) => _$ShortPoliceEntityFromJson(json);
  Map<String, dynamic> toJson() => _$ShortPoliceEntityToJson(this);
}
