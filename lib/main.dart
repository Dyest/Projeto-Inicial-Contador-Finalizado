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
      backgroundColor: Colors.black,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Texto',
          style: TextStyle(
              fontFamily: 'serif',
              fontSize: 55,
              color: Colors.white,
              fontWeight: FontWeight.w800,)),
      Text('0',
          style: TextStyle(
              fontFamily: 'serif',
              fontSize: 90,
              color: Colors.white,
              fontWeight: FontWeight.w800,))],
    )
    ,
    );
  }
}
