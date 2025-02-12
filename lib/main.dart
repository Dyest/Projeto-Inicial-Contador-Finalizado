import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
    });

    print(count);
  }

  void increment() {
    setState(() {

      count++;
    });
    print(count);
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 5;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                isFull ? 'Lotado' : 'Pode Entrar',
                style: TextStyle(
                  fontFamily: 'serif',
                  fontSize: 60,
                  color: isFull ? Colors.red : Colors.black,
                  fontWeight: FontWeight.w500,
                )),

            const SizedBox(height: 30), //espaçamento entre botoes

            Text('$count',
                style: TextStyle(
                  fontFamily: 'serif',
                  fontSize: 80,
                  color: isFull ? Colors.red : Colors.black,
                  fontWeight: FontWeight.w800,
                )),

            const SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: isEmpty ? null : decrement,
                  style: TextButton.styleFrom(
                      backgroundColor: isEmpty ? Colors.white.withOpacity(0.2) : Colors.purple,
                      //padding: const EdgeInsets.fromLTRB(25, 12, 25, 12),
                      fixedSize: const Size(100, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Text('Saiu',
                      style: TextStyle(
                        fontFamily: 'serif',
                        fontSize: 20,
                        color: Colors.black,
                      )),
                ),

                const SizedBox(width: 8), //espaçamento entre botoes

                TextButton(
                  onPressed: isFull ? null : increment,
                  style: TextButton.styleFrom(
                      backgroundColor: isFull ? Colors.white.withOpacity(0.2) : Colors.purple,
                      //padding: const EdgeInsets.fromLTRB(25, 12, 25, 12),
                      fixedSize: const Size(100, 45),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
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
      ),
    );
  }
}

