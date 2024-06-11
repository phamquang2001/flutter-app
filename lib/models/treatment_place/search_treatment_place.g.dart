// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_treatment_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchTreatmentPlace _$SearchTreatmentPlaceFromJson(
        Map<String, dynamic> json) =>
    SearchTreatmentPlace(
      page: (json['page'] as num?)?.toInt() ?? 1,
      size: (json['size'] as num?)?.toInt() ?? 100,
      fullName: json['fullName'] as String? ?? "",
      leaderFullName: json['leaderFullName'] as String? ?? "",
      leaderPhoneNumber: json['leaderPhoneNumber'] as String? ?? "",
      cityId: (json['cityId'] as num?)?.toInt() ?? 0,
      districtId: (json['districtId'] as num?)?.toInt() ?? 0,
      wardId: (json['wardId'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$SearchTreatmentPlaceToJson(
        SearchTreatmentPlace instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
      'fullName': instance.fullName,
      'leaderFullName': instance.leaderFullName,
      'leaderPhoneNumber': instance.leaderPhoneNumber,
      'cityId': instance.cityId,
      'districtId': instance.districtId,
      'wardId': instance.wardId,
    };
