import 'package:flutter/material.dart';

class Conversation extends StatefulWidget {
  const Conversation({super.key});

  @override
  State<Conversation> createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(

            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(color: Colors.pink,borderRadius: BorderRadius.circular(20)),
                child: Text("Hello, how are you doing?", style: TextStyle(fontSize: 20, color: Colors.black),)

              ),
            ],
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20)),
            child: Text("Hi, I'm alright", style: TextStyle(fontSize: 20, color: Colors.black,), textAlign: TextAlign.right,)
          )
        ],
      ),
    );
  }
}
