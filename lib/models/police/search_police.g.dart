// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_police.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchPolice _$SearchPoliceFromJson(Map<String, dynamic> json) => SearchPolice(
      page: (json['page'] as num?)?.toInt() ?? 1,
      size: (json['size'] as num?)?.toInt() ?? 100,
      identifyNumber: json['identifyNumber'] as String? ?? "",
      fullName: json['fullName'] as String? ?? "",
      role: (json['role'] as num?)?.toInt() ?? 0,
      level: (json['level'] as num?)?.toInt() ?? 0,
      cityId: (json['cityId'] as num?)?.toInt() ?? 0,
      districtId: (json['districtId'] as num?)?.toInt() ?? 0,
      wardId: (json['wardId'] as num?)?.toInt() ?? 0,
      assignStatus: (json['assignStatus'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$SearchPoliceToJson(SearchPolice instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
      'identifyNumber': instance.identifyNumber,
      'fullName': instance.fullName,
      'role': instance.role,
      'level': instance.level,
      'cityId': instance.cityId,
      'districtId': instance.districtId,
      'wardId': instance.wardId,
      'assignStatus': instance.assignStatus,
    };
