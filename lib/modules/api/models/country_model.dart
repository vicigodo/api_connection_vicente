// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:api_connection_vicente/modules/api/models/name_country.dart';
import 'package:json_annotation/json_annotation.dart';

part 'country_model.g.dart';

@JsonSerializable()
class CountryV3 {
  NameCountry? name;
  CountryV3({
    this.name,
  });

  factory CountryV3.fromJson(Map<String, dynamic> json) =>
      _$CountryV3FromJson(json);
  Map<String, dynamic> toJson() => _$CountryV3ToJson(this);
}
