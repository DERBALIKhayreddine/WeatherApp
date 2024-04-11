import 'package:flutter/material.dart';
import 'package:tp3/api/Weather.dart';
import 'package:tp3/api/api_client.dart';
import 'package:tp3/pages/addional_page.dart';

import 'package:tp3/pages/current_weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late WeatherApiClient client;
  Weather? data;
  TextEditingController cityNameController = TextEditingController();
  bool showInput = true;

  @override
  void initState() {
    super.initState();
    client = WeatherApiClient();
  }

  Future<void> getData(String city) async {
    data = await client.getCurrentWeather(city);
    setState(() {}); // Trigger a rebuild after data retrieval
  }

  void onSubmit() {
    getData(cityNameController.text);
    setState(() {
      showInput = false;
    });
  }

  void reset() {
    setState(() {
      showInput = true;
      data = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade400,
        elevation: 0.0, // Setting elevation to 0.0 removes the shadow
        title: const Text(
          "Weather Application",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true, // Providing a Text widget for the title
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
      ),
      body: showInput
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: cityNameController,
                        decoration: InputDecoration(
                          hintText: 'Enter city name',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: onSubmit,
                      child: Text('Submit'),
                    ),
                  ),
                ],
              ),
            )
          : data != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    currentWeather(Icons.wb_sunny_sharp, "${data!.temp}",
                        "${data!.cityName}"),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "information",
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                    ),
                    Divider(),
                    SizedBox(
                      height: 20.0,
                    ),
                    addional("${data!.wind}", "${data!.humidity}",
                        "${data!.pressure}", "${data!.feels_like}"),
                    SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      onPressed: reset,
                      child: Text('Reset'),
                    ),
                  ],
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
    );
  }
}
