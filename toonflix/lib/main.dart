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
    // print(numbers);
  }

  /*
  Context contains information of parents on widget tree
  Context allow us access to parent's data
  */

  @override
  Widget build(BuildContext context) {
    //
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              MyLargeTitle(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        // color of titleLarge shouldn't be null
        // ! or ? both available
        color: Theme.of(context).textTheme.titleLarge!.color,
      ),
    );
  }
}
