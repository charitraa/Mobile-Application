import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dashboardPage extends StatefulWidget {
  const dashboardPage({super.key});

  @override
  State<dashboardPage> createState() => _dashboardPageState();
}

class _dashboardPageState extends State<dashboardPage> {
  horizontalscrollfunc(var size, var color) {
    return Container(
      margin: EdgeInsets.only(left: 5),
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
          )
        ],
      ),
    );
  }
}
