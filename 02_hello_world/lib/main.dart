import 'package:flutter/material.dart';
import 'screens/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello world app',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.purpleAccent
      ),
      debugShowCheckedModeBanner: false,
      home: CounterScreen()
    );
  }
}

