// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'short_police_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShortPoliceEntity _$ShortPoliceEntityFromJson(Map<String, dynamic> json) =>
    ShortPoliceEntity(
      id: (json['id'] as num).toInt(),
      identifyNumber: json['identifyNumber'] as String,
      fullName: json['fullName'] as String,
      level: (json['level'] as num).toInt(),
      levelName: json['levelName'] as String,
    );

Map<String, dynamic> _$ShortPoliceEntityToJson(ShortPoliceEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'identifyNumber': instance.identifyNumber,
      'fullName': instance.fullName,
      'level': instance.level,
      'levelName': instance.levelName,
    };
