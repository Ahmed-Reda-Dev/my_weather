import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myweather/Features/home/domain/models/weather_model/weather_model.dart';
import 'package:myweather/Features/home/presentation/widgets/weather_info.dart';
import 'package:myweather/core/widgets/space_box.dart';

import 'custom_app_bar.dart';
import 'home_view_body_footer.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key, required this.weatherModel}) : super(key: key);

  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SpaceBox(
          height: 8,
        ),
        CustomAppBar(weather: weatherModel,),
        WeatherInfo(
          weather: weatherModel,
        ),
        const Spacer(),
        HomeVIewBodyFooter(
          weatherModel: weatherModel,
        ),
      ],
    );
  }
}
