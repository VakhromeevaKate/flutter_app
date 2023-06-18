import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          child: const Icon(Icons.add),
          onPressed: () { print('Button pressed!'); },
        ),
        body: const Center(
          child: Text('HELLO WORLD!', style: TextStyle(
            fontSize: 20,
            fontFamily: 'Times New Roman',
            color: Colors.red,
          )),
        ),
      )
    );
  }
}