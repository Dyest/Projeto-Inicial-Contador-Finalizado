import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Texto',
              style: TextStyle(
                  fontFamily: 'serif', fontSize: 45, color: Colors.teal, fontWeight: FontWeight.w800, backgroundColor: Colors.deepPurple)),
          Text('Texto2')
        ],
      ),
    );
  }
}
