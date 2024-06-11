import 'package:json_annotation/json_annotation.dart';

part "short_treatment_place_entity.g.dart";

@JsonSerializable()
class ShortTreatmentPlaceEntity {
  final int id;
  final String fullName;

  ShortTreatmentPlaceEntity({
    required this.id,
    required this.fullName,
  });

  factory ShortTreatmentPlaceEntity.fromJson(Map<String, dynamic> json) => _$ShortTreatmentPlaceEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ShortTreatmentPlaceEntityToJson(this);
}
