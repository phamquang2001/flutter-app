import 'package:json_annotation/json_annotation.dart';

part "city_entity.g.dart";

@JsonSerializable()
class CityEntity {
  String status;
  int id;
  String code;
  String fullName;

  CityEntity({
    required this.status,
    required this.id,
    required this.code,
    required this.fullName,
  });

  factory CityEntity.fromJson(Map<String, dynamic> json) => _$CityEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CityEntityToJson(this);
}
