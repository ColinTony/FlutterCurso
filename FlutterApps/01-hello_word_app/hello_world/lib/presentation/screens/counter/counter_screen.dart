import "package:flutter/material.dart";

class CounterScreen extends StatefulWidget{
  
  // agregamos el key
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clicks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () => {
            setState(() {
              clicks = 0;
            })
          }, icon: const Icon(Icons.refresh))
        ],
        title: const Center(child: Text("CONTADOR")),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text( 
            "$clicks" ,
             style: const TextStyle(fontSize: 160 , fontWeight: FontWeight.w100)),
            Text((clicks <= 1)? 'Click' : 'Clicks', style: const TextStyle(fontSize: 25))
        ],
      )),
      floatingActionButton: Column(
        children: [
          FloatingActionButton(
            onPressed: (){
              setState(() {
                clicks++;
              });
          },
          child: const Icon(Icons.plus_one),
          ),
        ],
      )
    );
  }
}