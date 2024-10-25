import 'package:flutter/material.dart';
import 'package:test2/pages/ChatApp/Conversation.dart';
import 'package:test2/static.dart';

class HomePage extends StatelessWidget {
  // Corrected function name from ConverstaionItem to ConversationItem
  Widget ConversationItem(Size) {
    return GestureDetector(
      onTap: () {
        // Navigate to the Conversation screen when tapped
        Conversation();
      },
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
            ),
            margin: EdgeInsets.only(right: 15, left: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                StaticValue.baseURL, // Ensure this URL is valid
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
            children: [
              Text(
                "name", // You might want to replace "name" with a dynamic value
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                "datetime", // You might want to replace "datetime" with a dynamic value
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            width: size.width,
            height: size.height / 1.2,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (context, index) {
                return ConversationItem(size);
              },
            ),
          ),
        ],
      ),
    );
  }
}