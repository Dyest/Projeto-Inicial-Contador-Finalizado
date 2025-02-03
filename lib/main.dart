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

  void decrement() {
    print('decrement');
  }

  void increment() {
    print('increment');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text('Texto',
              style: TextStyle(
                fontFamily: 'serif',
                fontSize: 70,
                color: Colors.black,
                fontWeight: FontWeight.w800,
              )),

          Text('0',
              style: TextStyle(
                fontFamily: 'serif',
                fontSize: 90,
                color: Colors.black,
                fontWeight: FontWeight.w800,
              )),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement,
                child: Text('Saiu',
                    style: TextStyle(
                      fontFamily: 'serif',
                      fontSize: 20,
                      color: Colors.black,
                    )),
              ),

              TextButton(
                onPressed: increment,
                child: Text('Entrou',
                    style: TextStyle(
                      fontFamily: 'serif',
                      fontSize: 20,
                      color: Colors.black,
                    )),
              ),

            ],
          )
        ],
      ),
    );
  }
}
