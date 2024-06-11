// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_treatment_place_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShortTreatmentPlaceEntity _$ShortTreatmentPlaceEntityFromJson(
        Map<String, dynamic> json) =>
    ShortTreatmentPlaceEntity(
      id: (json['id'] as num).toInt(),
      fullName: json['fullName'] as String,
    );

Map<String, dynamic> _$ShortTreatmentPlaceEntityToJson(
        ShortTreatmentPlaceEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
    };
