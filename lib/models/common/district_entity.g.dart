// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DistrictEntity _$DistrictEntityFromJson(Map<String, dynamic> json) =>
    DistrictEntity(
      status: json['status'] as String,
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      fullName: json['fullName'] as String,
    );

Map<String, dynamic> _$DistrictEntityToJson(DistrictEntity instance) =>
    <String, dynamic>{
      'status': instance.status,
      'id': instance.id,
      'code': instance.code,
      'fullName': instance.fullName,
    };
