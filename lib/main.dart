import 'package:dars_3_uy_shi/windows/main_window.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget{
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Weather",
      home: MainWindow(),
    );
  }
}