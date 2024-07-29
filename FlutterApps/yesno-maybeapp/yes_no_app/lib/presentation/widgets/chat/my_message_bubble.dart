import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,

      children: [
      Container(
        decoration: BoxDecoration(
          color: color.primary,
          borderRadius: BorderRadius.circular(20.0),
          ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 9),
          child: Text("NOOOOOOOOOOOOOOOOOOOOO!!", style: TextStyle(color: Colors.white),),
        ),
        ),
    ],);
  }
}