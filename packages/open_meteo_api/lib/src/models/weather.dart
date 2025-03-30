import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

@JsonSerializable()
class Weather {
  Weather({required this.temperature, required this.weatherCode});

  @JsonKey(required: true)
  final double temperature;

  @JsonKey(required: true, name: 'weathercode')
  final double weatherCode;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}
