import 'package:flutter/material.dart';

class Currencyconvertormaterialpage  extends StatelessWidget {
  const Currencyconvertormaterialpage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("0" , style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold)),
              TextField( style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),decoration: InputDecoration(
                label: Text("Please Enter the Currency")
              ),)
            ],
          )
        ),
    );
  }
}