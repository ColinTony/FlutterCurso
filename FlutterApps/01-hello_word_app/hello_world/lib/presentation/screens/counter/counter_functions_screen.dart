// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class CounterFunctionsScreen extends StatefulWidget{
  
  // agregamos el key
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
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
          }, icon: const Icon(Icons.refresh_outlined))
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
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomButton(icon: Icons.plus_one_rounded,onPress: () {
          setState(() {
            clicks++;
          });
        },),
      const SizedBox(height: 15),
      CustomButton(icon: Icons.exposure_minus_1, onPress: () {
        setState(() {
            if(clicks > 0) clicks--;
          });
      },),
      const SizedBox(height: 15,),
      CustomButton(
        icon: Icons.refresh_rounded,
        onPress: () => {
          setState(() {
            clicks = 0;
          })
        },)
      ],)
    );
  }
}

class CustomButton extends StatelessWidget {
  IconData icon;
  VoidCallback? onPress;

  CustomButton({
    super.key,
    required this.icon,
    this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPress,
      child:  Icon(icon),
    );
  }
}