import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Kablammo
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.deepOrangeAccent,
          secondary: Colors.orange,
        ),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.purple)),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Hello, world!')),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.favorite_outline),
          onPressed: () { print('Button pressed!'); },
        ),
        body: const Center(
          child: Text('Button pressed ${0 + 1} times', style: TextStyle(
            fontSize: 20,
            fontFamily: 'Kablammo',
            color: Colors.black,
          )),
        ),
      )
    );
  }
}