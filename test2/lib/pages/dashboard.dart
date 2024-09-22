import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class dashboardPage extends StatefulWidget {
  const dashboardPage({super.key});

  @override
  State<dashboardPage> createState() => _dashboardPageState();
}

class _dashboardPageState extends State<dashboardPage> {
  horizontalscrollfunc(var size, var color) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      width: size.width / 1.5,
      height: size.height / 5,
      decoration: BoxDecoration(
          color: Color(color), borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children:[
          Container(
            height: size.height/5,
            width: size.width/1.5,
            child:ClipRRect(borderRadius:BorderRadius.circular(20),child: Image.asset("images/image (9).png",fit: BoxFit.cover,),)
          ),
          Positioned(
              bottom:40,
              left: 15,
              child:  Container(
                width: size.width/2,
                  child:  Text("Welcome to the Mobile Application",
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                    maxLines: 2,))
              ),
          Positioned(
              bottom:10,
              left: 15,
              child:  Container(
                  width: size.width/2,
                  color: Colors.black12,
                  child:  Text("Sep 20, 2024",
                    style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    maxLines: 1,overflow: TextOverflow.ellipsis,))
          ),
          Positioned(
            right: 5,
              bottom: 5,
              child:
          Icon(Icons.play_circle, size: 30,color: Colors.white,))
        ]
      )
    );
  }
  verticalscrollfunc(var size) {
    return Container(
        margin: EdgeInsets.only(bottom: 10, top: 10, left: 10),
        width: size.width / 0.5,
        height: size.height / 7,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Stack(
            children:[
              Container(
                  height: size.height/7,
                  width: size.width/2.5,
                  child:ClipRRect(borderRadius:BorderRadius.circular(20),child: Image.asset("images/image (9).png",fit: BoxFit.cover,),)
              ),
              Positioned(
                  top:5,
                  right: 15,
                  child:  Container(
                      width: size.width/2,
                      child:  Text("Welcome to the Mobile Application of pcps",
                        style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                        maxLines: 2,))
              ),
              Positioned(
                  bottom:10,
                  right: 5,
                  child:  Container(
                      width: size.width/3.5,
                      child:  Text("Sep 20, 2024",
                        style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                        maxLines: 1,overflow: TextOverflow.ellipsis,))
              ),
              Positioned(
                  bottom:10,
                  left: 175,
                  child:  Container(
                      width: size.width/4.5,
                      decoration: BoxDecoration(
                        color: Colors.red, // Move color here
                        borderRadius: BorderRadius.circular(5), // Set border radius
                      ),
                      child:  Text("xyz.com",
                        style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center,
                        maxLines: 1,overflow: TextOverflow.ellipsis,))
              ),
              Positioned(
                  top: 40,
                  left: 60,
                  child:
                  Icon(Icons.play_circle, size: 50,color: Colors.white,))
            ]
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SingleChildScrollView(
          //     scrollDirection: Axis.horizontal,
          //     child: Row(
          //       children: [
          //         horizontalscrollfunc(size, 0xfffff00f),
          //         const SizedBox(
          //           width: 10,
          //         ),
          //         horizontalscrollfunc(size, 0xfffff00fa),
          //         const SizedBox(
          //           width: 10,
          //         ),
          //         horizontalscrollfunc(size, 0xfffff1115),
          //         const SizedBox(
          //           width: 10,
          //         ),
          //         horizontalscrollfunc(size, 0xfffff4445),
          //       ],
          //     )),
          Container(
            height: size.height/5,
            width: size.width/1,
            child: ListView.builder(itemCount: 20,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return horizontalscrollfunc(size, 0xfffff1115);
                }
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: size.height/1.45,
            width: size.width/0.5,
            child: ListView.builder(itemCount: 20,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index){
                  return verticalscrollfunc(size);
                }
            ),
          )

        ],
      ),
    );
  }
}
