import 'package:flutter/material.dart';
import 'package:untitled/calculatorscreen.dart';
import 'package:untitled/countscreem.dart';

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
      home: calculatorscreen(),

      initialRoute: calculatorscreen.routNamed,
      routes: {
        countscreem.routNamed:(context)=> countscreem(),
        calculatorscreen.routNamed:(context)=> calculatorscreen(),




      },

    );
  }
}