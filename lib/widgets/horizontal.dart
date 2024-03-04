import 'package:flutter/material.dart';

class HorizontalScrollWidget extends StatelessWidget {
  const HorizontalScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 200, // Set the desired height
      child: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              margin: EdgeInsets.only(right: 10),
              width: screenWidth, // Set the width of each item
              color: Colors.red,
              child: Center(child: Text('Item 1')),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              width: screenWidth,
              color: Colors.blue,
              child: Center(child: Text('Item 2')),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              width: screenWidth,
              color: Colors.green,
              child: Center(child: Text('Item 3')),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              width: screenWidth,
              color: Colors.yellow,
              child: Center(child: Text('Item 4')),
            ),
            // Add more items as needed
          ],
        ),
      ),
    );
  }
}
