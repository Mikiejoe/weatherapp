import "package:flutter/material.dart";
import "package:weatherapp/models/weather_model.dart";

class Weather extends StatelessWidget {
  const Weather({super.key, required this.data});
  final WeatherData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      margin: const EdgeInsetsDirectional.symmetric(horizontal: 2),
      padding: const EdgeInsetsDirectional.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 126, 161, 252).withOpacity(0.6),
            const Color.fromARGB(255, 126, 161, 252).withOpacity(0.1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            data.time,
            style: TextStyle(
                fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Image.asset("image/cloudy.png", width: 30, height: 30),
          Text(
            data.degrees,
            style: TextStyle(
                fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          
        ],
      ),
    );
  }
}
