import 'package:find_weather_app/font_style.dart';
import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({super.key});


  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'background/weather_search.jpg',
                  ),
                  fit: BoxFit.cover)),
          constraints: const BoxConstraints.expand(),
          child: SafeArea(
              child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_outlined, color: Colors.white,),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  style: const TextStyle(color: Colors.blue),
                  onChanged: (value) {
                    cityName = value;
                  },
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: Icon(
                      Icons.location_city,
                      color: Colors.white,
                    ),
                    hintText: 'Enter City Name',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              ElevatedButton(

                  onPressed:()=>Navigator.pop(context, cityName),
                  child: Text(
                    'Get Weather',
                    style: kButtonTextStyle,
                  ))
            ],
          ))),
    );
  }
}
