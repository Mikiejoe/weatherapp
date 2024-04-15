import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weatherapp/models/weather_model.dart';
import 'package:weatherapp/widgets/weather_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<WeatherData> _data = [
    WeatherData(time: '1PM', weather: "sunny", degrees: "24°"),
    WeatherData(time: '2PM', weather: "sunny", degrees: "24°"),
    WeatherData(time: '3PM', weather: "sunny", degrees: "24°"),
    WeatherData(time: '4PM', weather: "sunny", degrees: "23°"),
    WeatherData(time: '5PM', weather: "sunny", degrees: "22°"),
    WeatherData(time: '6PM', weather: "Cloudy", degrees: "17°"),
    WeatherData(time: '7PM', weather: "Calm", degrees: "15°"),
    WeatherData(time: '8PM', weather: "Calm", degrees: "15°")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 24,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 126, 161, 252),
                    Color(0xff0d3cb0)
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 24),
                  const Text(
                    "London",
                    style: TextStyle(
                      // fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on, color: Colors.white),
                      SizedBox(width: 4),
                      Text(
                        "Current Location",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("image/cloudy.png", width: 100, height: 100),
                      const SizedBox(width: 24),
                      const Text(
                        "24°",
                        style: TextStyle(
                          fontSize: 100,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Cloudy - H:16 L:10",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 32,
                          width: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 126, 161, 252)
                                .withOpacity(0.4),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Center(
                            child: Text(
                              "Daily",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          )),
                      const SizedBox(width: 8),
                      Container(
                          height: 32,
                          width: 80,
                          decoration: BoxDecoration(
                            color: const Color(0xff0d3cb0).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Center(
                            child: Text(
                              "Weekly",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _data.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Weather(
                                data: _data[index],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color.fromARGB(255, 126, 161, 250)
                                .withOpacity(0.6),
                            const Color.fromARGB(255, 126, 161, 250)
                                .withOpacity(0.1),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
