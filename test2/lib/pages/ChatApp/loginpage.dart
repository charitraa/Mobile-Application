import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test2/pages/ChatApp/Home.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => Login();
}

class Login extends State<LoginWidget> {
   TextEditingController nameController = TextEditingController();

  void gotoChatPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
          (route) => false,
    );
  }

  readfromstorage() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userid = await prefs.getString('userid');
    String? username = await prefs.getString('username');
    if (userid!=null && username!= null){
      gotoChatPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 400,
              color: Colors.pink,
              child: Icon(Icons.bike_scooter_outlined, size: 200, color: Colors.white),
            ),
            SizedBox(height: 40),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Enter your name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () async {
                if (nameController.text.isNotEmpty) {
                  String userId = DateTime.now().toIso8601String();
                  FirebaseFirestore.instance.collection('USER').doc(userId).set({''
                      'name':nameController.text,
                  });
                  final SharedPreferences prefs = await SharedPreferences.getInstance();
                  await prefs.setString('userid', userId);
                  await prefs.setString('username', nameController.text);

                  gotoChatPage();
                }

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                padding: EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Let's get started",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
