import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Conversation extends StatefulWidget {
  const Conversation({super.key});

  @override
  State<Conversation> createState() => _ConversationState();
}

class _ConversationState extends State<Conversation> {

  Future<void> addConversation() async {
    CollectionReference conversation = FirebaseFirestore.instance.collection('CONVSERSATIONS');
    try{
      await conversation.add({
        'name1': "BOT" + DateTime.now().day.toString(),
        'name1': "BOT" + DateTime.now().day.toString(),

        'name1': "BOT" + DateTime.now().day.toString(),

      });
      print("Conversation added sucessfully");

    }
    catch(e){
      print("failed to add converstaion: $e");
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addConversation();
  }
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
