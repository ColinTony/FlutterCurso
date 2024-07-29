import 'package:flutter/material.dart';

class OtherMessageBubble extends StatelessWidget {
  const OtherMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
      Container(
        decoration: BoxDecoration(
          color: color.secondary,
          borderRadius: BorderRadius.circular(20.0),
          ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 9),
          child: Text("Oye", style: TextStyle(color: Colors.white),),
        ),
        ),
        const SizedBox(height: 15,),
        _ImageBubble(),
        const SizedBox(height: 15,)
    ],);
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child:Image.network(
        'https://i.gifer.com/18UU.gif',
        width: size.width * 0.7,
        height: 160,
        fit: BoxFit.cover,
        ),

      );
  }
}