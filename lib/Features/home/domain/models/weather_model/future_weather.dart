import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'forecastday.dart';

class FutureWeather extends Equatable {
  final List<Forecastday>? forecastday;

  const FutureWeather({this.forecastday});

  factory FutureWeather.fromMap(Map<String, dynamic> data) => FutureWeather(
    forecastday: (data['forecastday'] as List<dynamic>?)
        ?.map((e) => Forecastday.fromMap(e as Map<String, dynamic>))
        .toList(),
  );

  Map<String, dynamic> toMap() => {
    'forecastday': forecastday?.map((e) => e.toMap()).toList(),
  };


  factory FutureWeather.fromJson(String data) {
    return FutureWeather.fromMap(json.decode(data) as Map<String, dynamic>);
  }


  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [forecastday];
}
