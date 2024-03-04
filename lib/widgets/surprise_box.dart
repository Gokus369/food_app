import 'package:flutter/material.dart';

class SurpriceBox extends StatelessWidget {
  const SurpriceBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 255, 213, 192),
        ),
        height: 150,
        width: double.infinity,
        child: const Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    // Text Column
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Surprise',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 98, 0),
                            ),
                          ),
                          Text(
                            'Open your gift now',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            'Order now',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 98, 0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Image
                    Image(
                      image: AssetImage(
                        'assets/images/s1.jpeg',
                      ),
                      width: 80, // Adjust the width as needed
                      height: 80, // Adjust the height as needed
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
