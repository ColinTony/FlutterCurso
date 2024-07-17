import 'package:flutter/material.dart';
import 'package:hello_world/presentation/screens/counter/counter_screen.dart';

void main(){
  runApp(const MyApp()); // empieza desde el main como la mayoria de lenguajes.
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Una clase de marialApp
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true,colorSchemeSeed: Colors.amber),
      home: const CounterScreen(),
    );
  }
}