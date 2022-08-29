import 'package:flutter/cupertino.dart';
import 'package:myweather/Features/home/domain/models/weather_model/weather_model.dart';
import 'package:myweather/Features/home/presentation/widgets/weather_item.dart';

class WeatherList extends StatelessWidget {
  const WeatherList({Key? key, required this.weatherModel}) : super(key: key);
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 12,
        ),
        child: WeatherItem(weatherModel: weatherModel,),
      ),
    );
  }
}
