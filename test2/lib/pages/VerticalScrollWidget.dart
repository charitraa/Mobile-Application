import 'package:flutter/material.dart';
import 'Details.dart';
class VerticalScrollWidget extends StatelessWidget {
  final Size size;

  const VerticalScrollWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, top: 10, left: 10),
      width: size.width / 0.5,
      height: size.height / 7,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ViewPage(),
            ),
          );
        },
        child: Stack(
          children: [
            Container(
              height: size.height / 7,
              width: size.width / 2.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "lib/Images/N.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 5,
              right: 15,
              child: Container(
                width: size.width / 2,
                child: const Text(
                  "Welcome to the Mobile Application of pcps",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 5,
              child: Container(
                width: size.width / 3.5,
                child: const Text(
                  "Sep 20, 2024",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 175,
              child: Container(
                width: size.width / 4.5,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  "xyz.com",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            const Positioned(
              top: 40,
              left: 60,
              child: Icon(
                Icons.play_circle,
                size: 50,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}