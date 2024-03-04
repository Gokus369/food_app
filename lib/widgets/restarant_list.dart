import 'package:flutter/material.dart';
import 'package:swiggy/data/data.dart';
import 'package:swiggy/widgets/restaurant_card.dart';

class RestaurantList extends StatelessWidget {
  const RestaurantList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyRestaurants.length,
      itemBuilder: (BuildContext context, int index) {
        return RestaurentCard(restaurants: dummyRestaurants[index]);
      },
    );
  }
}
