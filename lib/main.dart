import 'package:flutter/material.dart';
import 'index.dart';

void main() {
  var numbers = [1, 2, 3];
  // numbers = [4, 5, 6];
  numbers.add(4);

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Internals'),
          backgroundColor: Color.fromARGB(255, 107, 115, 236),
          foregroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        body: const Keys(),
      ),
    );
  }
}