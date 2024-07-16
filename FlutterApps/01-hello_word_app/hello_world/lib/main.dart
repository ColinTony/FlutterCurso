import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp()); // empieza desde el main como la mayoria de lenguajes.
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  // Todos los StatelessWidget necesitan este build
  // regresa un widget.
  @override
  Widget build(BuildContext context) {
    // Una clase de marialApp
    return const MaterialApp(
      home:  Center(child: Text('HOLA MUNDO')), // el center centra todos los hijos.
    );
  }
}