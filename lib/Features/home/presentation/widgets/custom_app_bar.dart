import 'package:flutter/material.dart';

import '../../../../styles.dart';
import '../../domain/models/weather_model/weather_model.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.weather}) : super(key: key);
  final WeatherModel weather;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          weather.location!.name!,
          style: Styles.bodyText5,
        )
      ],
    );
  }
}
