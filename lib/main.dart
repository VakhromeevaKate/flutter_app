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
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.purple, fontFamily: 'Kablammo')),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Center(
          child: Text('Hello, world!', style: TextStyle(color: Colors.purple, fontFamily: 'Kablammo', fontSize: 36),))
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.favorite, size: 36, color: Colors.purple, ),
          onPressed: () { print('Floated button pressed!'); },
        ),
        body: Center(
          child:  ElevatedButton.icon(
            icon: const Icon(Icons.settings, size: 36, color: Colors.purple),
            onPressed: onPressed,
            label: const Text('Elevated', style: TextStyle(fontFamily: 'Kablammo', fontSize: 36, color: Colors.purple),)),
        ),
      )
    );
  }
}