import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  //
  List<int> numbers = [];

  void onClicked() {
    // setState - notify to State Class that data has changed
    // counter = counter + 1;
    setState(() {
      // no need to put mutation in setState
      // put setState on bottom, put changes outside of setState - this will work too
      numbers.add(numbers.length);
    });
    print(numbers);
  }

  @override
  Widget build(BuildContext context) {
    //
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style: TextStyle(fontSize: 30),
              ),
              for (var n in numbers) Text('$n'),
              IconButton(
                iconSize: 40,
                onPressed: onClicked,
                icon: const Icon(Icons.add_box_rounded),
              )
            ],
          ),
        ),
      ),
    );
  }
}
