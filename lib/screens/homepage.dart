import 'package:flutter/material.dart';
import 'package:swiggy/widgets/horizontal.dart';
import 'package:swiggy/widgets/restarant_list.dart';
import 'package:swiggy/widgets/surprise_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pathanamthitta Town',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchBar(),
              SizedBox(height: 10),
              SurpriceBox(),
              HorizontalScrollWidget(),
              RestaurantList(),
            ],
          ),
        ),
      ),
    );
  }
}
