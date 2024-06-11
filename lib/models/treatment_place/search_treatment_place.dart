import 'package:json_annotation/json_annotation.dart';

part 'search_treatment_place.g.dart';

@JsonSerializable()
class SearchTreatmentPlace {
  int? page;
  int? size;
  String? fullName;
  String? leaderFullName;
  String? leaderPhoneNumber;
  int? cityId;
  int? districtId;
  int? wardId;

  SearchTreatmentPlace({
    this.page = 1,
    this.size = 100,
    this.fullName = "",
    this.leaderFullName = "",
    this.leaderPhoneNumber = "",
    this.cityId = 0,
    this.districtId = 0,
    this.wardId = 0,
  });

  factory SearchTreatmentPlace.fromJson(Map<String, dynamic> json) => _$SearchTreatmentPlaceFromJson(json);
  Map<String, dynamic> toJson() => _$SearchTreatmentPlaceToJson(this);
}
