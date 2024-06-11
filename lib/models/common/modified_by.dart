import 'package:json_annotation/json_annotation.dart';

part "modified_by.g.dart";

@JsonSerializable()
class ModifiedBy {
  final String identifyNumber;
  final String? fullName;

  ModifiedBy({
    required this.identifyNumber,
    this.fullName,
  });

  factory ModifiedBy.fromJson(Map<String, dynamic> json) => _$ModifiedByFromJson(json);

  Map<String, dynamic> toJson() => _$ModifiedByToJson(this);
}
