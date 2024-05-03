import 'package:json_annotation/json_annotation.dart';

part 'full_country_entity.g.dart';

@JsonSerializable()
class FullCountryEntity {
  @JsonKey(name: 'message')
  final String message;
  @JsonKey(name: 'data')
  final CountryData data;

  FullCountryEntity({required this.message, required this.data});

  factory FullCountryEntity.fromJson(Map<String, dynamic> json) => _$FullCountryEntityFromJson(json);
  Map<String, dynamic> toJson() => _$FullCountryEntityToJson(this);
}

@JsonSerializable()
class CountryData {
  @JsonKey(name: 'country')
  final CountryEntity country;

  CountryData({required this.country});

  factory CountryData.fromJson(Map<String, dynamic> json) => _$CountryDataFromJson(json);
  Map<String, dynamic> toJson() => _$CountryDataToJson(this);
}

@JsonSerializable()
class CountryEntity {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'delete')
  final int delete;
  @JsonKey(name: 'cities')
  final List<CityData> cities;
  @JsonKey(name: 'name_en')
  final String englishName;

  CountryEntity({required this.id, required this.name, required this.delete, required this.cities, required this.englishName});

  factory CountryEntity.fromJson(Map<String, dynamic> json) => _$CountryEntityFromJson(json);
  Map<String, dynamic> toJson() => _$CountryEntityToJson(this);
}

@JsonSerializable()
class CityData {
  @JsonKey(name: 'city')
  final CityEntity city;

  CityData({required this.city});

  factory CityData.fromJson(Map<String, dynamic> json) => _$CityDataFromJson(json);
  Map<String, dynamic> toJson() => _$CityDataToJson(this);
}

@JsonSerializable()
class CityEntity {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'country_id')
  final int countryId;
  @JsonKey(name: 'delete')
  final int delete;
  @JsonKey(name: 'name_en')
  final String englishName;
  @JsonKey(name: 'regions')
  final List<RegionEntity> regions;

  CityEntity({required this.id, required this.name, required this.countryId, required this.delete, required this.englishName, required this.regions});

  factory CityEntity.fromJson(Map<String, dynamic> json) => _$CityEntityFromJson(json);
  Map<String, dynamic> toJson() => _$CityEntityToJson(this);
}

@JsonSerializable()
class RegionEntity {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'country_id')
  final int countryId;
  @JsonKey(name: 'city_id')
  final int cityId;
  @JsonKey(name: 'delete')
  final int delete;
  @JsonKey(name: 'name_en')
  final String englishName;
  @JsonKey(name: 'ship_cost')
  final int shipCost;

  RegionEntity({required this.id, required this.name, required this.countryId, required this.cityId, required this.delete, required this.englishName, required this.shipCost});

  factory RegionEntity.fromJson(Map<String, dynamic> json) => _$RegionEntityFromJson(json);
  Map<String, dynamic> toJson() => _$RegionEntityToJson(this);
}