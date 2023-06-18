import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  onPressed() {
    print('Button pressed');
  }

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
          child: const Icon(Icons.favorite_outline, size: 36, color: Colors.white, ),
          onPressed: () { print('Floated button pressed!'); },
        ),
        body: Center(
          child:  ElevatedButton(onPressed: onPressed, child: const Text('Elevated')),
        ),
      )
    );
  }
}