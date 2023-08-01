// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'name_country.g.dart';

@JsonSerializable()
class NameCountry {
  String? common;
  String? official;
  NameCountry({
    this.common,
    this.official,
  });

  factory NameCountry.fromJson(Map<String, dynamic> json) =>
      _$NameCountryFromJson(json);
  Map<String, dynamic> toJson() => _$NameCountryToJson(this);
}
