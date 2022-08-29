import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:myweather/Features/home/domain/models/weather_model/weather_model.dart';
import 'package:myweather/core/utils/size_config.dart';

import '../../../../core/widgets/space_box.dart';
import '../../../../styles.dart';

class WeatherInfo extends StatelessWidget {
  WeatherInfo({Key? key, required this.weather}) : super(key: key);
  final WeatherModel weather;
  @override
  Widget build(BuildContext context) {
    print(weather.current!.condition!.icon!);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(
          'https:' '${weather.current!.condition!.icon!}',
          height: SizeConfig.defaultSize * 20,
        ),
        Text(
          '${weather.current?.tempC!.toInt()}°',
          style: Styles.bodyText6.copyWith(
            fontSize: 46,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SpaceBox(
          height: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '${weather.forecast?.forecastday![0].day!.mintempC!.ceil()}°',
              style: Styles.bodyText3,
            ),
            SizedBox(
              width: SizeConfig.defaultSize * 20,
              child: AutoSizeText(
                '${weather.current!.condition!.text}',
                textAlign: TextAlign.center,
                style: Styles.bodyText5,
                maxLines: 2,
              ),
            ),
            Text(
              '${weather.forecast?.forecastday![0].day!.maxtempC!.ceil()}°',
              style: Styles.bodyText3,
            ),
          ],
        ),
      ],
    );
  }
}
