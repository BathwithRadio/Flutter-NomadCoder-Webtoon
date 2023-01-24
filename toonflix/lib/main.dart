import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screem.dart';
import 'package:toonflix/services/api_service.dart';

//https://webtoon-crawler.nomadcoders.workers.dev/

void main(List<String> args) {
  ApiService().getTodaysToons();
  runApp(const App());
}

class App extends StatelessWidget {
  //
  // widget has key, and key used like identifier
  // so with this, flutter can find widget quickly
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    //
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
