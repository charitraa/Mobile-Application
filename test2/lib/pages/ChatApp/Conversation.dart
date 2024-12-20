import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:test2/model/ConversationModel.dart';
import 'package:test2/pages/ChatApp/api/datalayer.dart';

class Conversationpage extends StatefulWidget {
  const Conversationpage({super.key});

  @override
  State<Conversationpage> createState() => _ConversationpageState();
}

class _ConversationpageState extends State<Conversationpage> {


  leftsidedataitem(size) {
    return Container(
      width: size.width,
      padding: EdgeInsets.only(left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(20)
            ),
            padding: EdgeInsets.only(left: 20,right: 5,top: 10,bottom: 10),
            width: size.width/1.2,
            child: Text("Left side item",style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }

  rightsidedataitem(size){
    return Container(
      width: size.width,
      padding: EdgeInsets.only(left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20)
            ),
            padding: EdgeInsets.only(left: 20,right: 5,top: 10,bottom: 10),
            width: size.width/1.2,
            child: Text("Right side item",style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }


  //addtorealtimedatabase
  addtodb(String text,int type ) async {
    String chatId = Timestamp.now().toString();
    DatabaseReference ref = FirebaseDatabase.instance.ref("chat/$chatId");

    await ref.set({
      "userId1": "John",
      "userId2": "18",
      "username1": "",
      "username2": "",
      "address": "",
      "text": text,
      "type": "0", // 0 for text and 1 for image
      "createdAt": DateTime.now().toIso8601String()
    });
  }

  TextEditingController textcontroller = TextEditingController();
  buttonwithtext(size){
    return Container(
      decoration: BoxDecoration(color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.only(bottom: 20,left: 10,right: 10),
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            width: size.width/1.2,
            child: TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
              style:const TextStyle(fontSize: 18,
                  fontWeight: FontWeight.normal,color: Colors.black87),
              maxLines: 1,
              textAlign: TextAlign.start,
              controller: textcontroller,
              onEditingComplete: (){
                addtodb(textcontroller.text, 0);
                textcontroller.clear();
              },
            ),
          ),
          GestureDetector(
            onTap: (){
              addtodb(textcontroller.text, 0);
              textcontroller.clear();
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0,left: 5,top: 5,bottom: 5),
              child: Icon(Icons.send,color: Colors.white,size: 22,),
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                leftsidedataitem(size),
                SizedBox(height: 5,),
                rightsidedataitem(size)
              ],
            ),
          ),

          buttonwithtext(size),

        ],
      ),
    );
  }
}