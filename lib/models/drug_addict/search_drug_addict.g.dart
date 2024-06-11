// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_drug_addict.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchDrugAddict _$SearchDrugAddictFromJson(Map<String, dynamic> json) =>
    SearchDrugAddict(
      page: (json['page'] as num?)?.toInt() ?? 1,
      size: (json['size'] as num?)?.toInt() ?? 100,
      identifyNumber: json['identifyNumber'] as String? ?? '',
      fullName: json['fullName'] as String? ?? '',
      supervisorStatus: (json['supervisorStatus'] as num?)?.toInt(),
      supervisorLevel: (json['supervisorLevel'] as num?)?.toInt() ?? 0,
      supervisorIdentifyNumber:
          json['supervisorIdentifyNumber'] as String? ?? '',
      supervisorFullName: json['supervisorFullName'] as String? ?? '',
      cityId: (json['cityId'] as num?)?.toInt() ?? 0,
      districtId: (json['districtId'] as num?)?.toInt() ?? 0,
      wardId: (json['wardId'] as num?)?.toInt() ?? 0,
      treatmentPlaceId: (json['treatmentPlaceId'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$SearchDrugAddictToJson(SearchDrugAddict instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
      'identifyNumber': instance.identifyNumber,
      'fullName': instance.fullName,
      'supervisorStatus': instance.supervisorStatus,
      'supervisorLevel': instance.supervisorLevel,
      'supervisorIdentifyNumber': instance.supervisorIdentifyNumber,
      'supervisorFullName': instance.supervisorFullName,
      'cityId': instance.cityId,
      'districtId': instance.districtId,
      'wardId': instance.wardId,
      'treatmentPlaceId': instance.treatmentPlaceId,
    };
