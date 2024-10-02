import 'package:flutter/material.dart';
import 'Dashboard.dart';
import 'VerticalScrollWidget.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({super.key});

  Widget _buildImageSection(Size size) {
    return Container(
      width: size.width,
      height: size.height / 3.5,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "lib/Images/N.png",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Positioned(
            child: Center(
              child: const Icon(
                Icons.play_circle_fill,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
          const Positioned(
            top: 10,
            right: 10,
            child: Icon(
              Icons.share,
              size: 30,
              color: Colors.white,
            ),
          ),
          const Positioned(
            top: 10,
            left: 10,
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildImageSection(size),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Today news update Sept 2024",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Season Maharjan",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  "May 24, 2020",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Today the weather is very cloudy and it will rain heavily. "
                  "Take an umbrella when you come out of the room and beware "
                  "to ride safe and wear a raincoat. And one more thing, always smile.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return VerticalScrollWidget(size: size);
              },
            ),
          ),
        ],
      ),
    );
  }
}