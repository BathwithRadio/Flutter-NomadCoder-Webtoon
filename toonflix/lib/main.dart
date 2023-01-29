import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screem.dart';

//https://webtoon-crawler.nomadcoders.workers.dev/

void main(List<String> args) {
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
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
