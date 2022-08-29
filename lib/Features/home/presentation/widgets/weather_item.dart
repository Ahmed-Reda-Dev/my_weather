import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../styles.dart';
import '../../domain/models/weather_model/weather_model.dart';

class WeatherItem extends StatelessWidget {
  const WeatherItem({Key? key, required this.weatherModel}) : super(key: key);
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${weatherModel.future?.forecastday![0].date}",
                style: Styles.bodyText2.copyWith(
                  color: kSecondaryColor,
                ),
              ),
              Row(
                children: [
                  Text(
                    '${weatherModel.current?.tempC!.toInt()}°',
                    style: Styles.bodyText2.copyWith(
                      color: kSecondaryColor,
                    ),
                  ),
                  Image.network('https:${weatherModel.current!.condition!.icon!}'),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${weatherModel.future?.forecastday![1].date}",
                style: Styles.bodyText2.copyWith(
                  color: kSecondaryColor,
                ),
              ),
              Row(
                children: [
                  Text(
                    '${weatherModel.future?.forecastday![1].day!.avgtempC}°',
                    style: Styles.bodyText2.copyWith(
                      color: kSecondaryColor,
                    ),
                  ),
                  Image.network('https:${weatherModel.future?.forecastday![1].day!.condition!.icon}'),

                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${weatherModel.future?.forecastday![2].date}",
                style: Styles.bodyText2.copyWith(
                  color: kSecondaryColor,
                ),
              ),
              Row(
                children: [
                  Text(
                    '${weatherModel.future?.forecastday![2].day!.avgtempC}°',
                    style: Styles.bodyText2.copyWith(
                      color: kSecondaryColor,
                    ),
                  ),
                  Image.network('https:${weatherModel.future?.forecastday![2].day!.condition!.icon}'),

                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
