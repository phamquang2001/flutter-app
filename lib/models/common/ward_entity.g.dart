// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ward_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WardEntity _$WardEntityFromJson(Map<String, dynamic> json) => WardEntity(
      status: json['status'] as String,
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      fullName: json['fullName'] as String,
    );

Map<String, dynamic> _$WardEntityToJson(WardEntity instance) =>
    <String, dynamic>{
      'status': instance.status,
      'id': instance.id,
      'code': instance.code,
      'fullName': instance.fullName,
    };
