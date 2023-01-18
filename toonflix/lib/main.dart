import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  //
  //build method -> build UI of your widget
  @override
  Widget build(BuildContext context) {
    // Choose starting point - need choos Mat or Cup
    // Material - Google - Flutter is from Google this looks better
    // Cupertino - Apple
    // if you want somthing
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter'),
        ),
        body: Center(
          child: Text('Hello world!'),
        ),
      ),
    );
  }
}
