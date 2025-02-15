import 'package:app2/home.dart';
import 'sec.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'OpenSans'),
      home: const HomeScreen(),
      routes: {
        '/bre': (context) => Home(),
        '/Home': (context) => HomeScreen(),
        '/Lunch':(context) =>sec()
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bre');
              },
              child: const Text('Breakfast'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Lunch');
              },
              child: const Text('lunch'),
            ),

          ],
        ),
      ),
    );
  }
}
