// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['temperature', 'weathercode']);
  return Weather(
    temperature: (json['temperature'] as num).toDouble(),
    weatherCode: (json['weathercode'] as num).toDouble(),
  );
}

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
  'temperature': instance.temperature,
  'weathercode': instance.weatherCode,
};
