import 'package:find_weather_app/screens/weather_screen.dart';
import 'package:find_weather_app/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WeatherScreen(
        locationWeather: weatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        
        child: SpinKitRotatingCircle(
          color: Colors.blue,
          size: 100.0,
        ),
      ),
    );
  }
}