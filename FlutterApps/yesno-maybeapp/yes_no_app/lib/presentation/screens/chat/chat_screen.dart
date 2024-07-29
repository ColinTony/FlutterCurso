import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/other_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: const Icon(Icons.line_style), onPressed: () {
            
          },)
        ],
        title: const Text('My father'),
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://bgr.com/wp-content/uploads/2015/08/darth-vader.jpg?'),
            ),
        )
        ),
    body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(child: ListView.builder
          (
            itemCount: 10,
            itemBuilder: (context, index) {
            return (index % 2 == 0) ? const OtherMessageBubble() : const MyMessageBubble();
          },))
        ],
      ));
  }
}