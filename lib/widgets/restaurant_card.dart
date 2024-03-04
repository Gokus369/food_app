import 'package:flutter/material.dart';
import 'package:swiggy/modal/modal.dart';

class RestaurentCard extends StatelessWidget {
  const RestaurentCard({
    super.key,
    required this.restaurants,
  });
  final Restaurant restaurants;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Card(
        elevation: 1,
        margin: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              restaurants.imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                restaurants.name,
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Categories:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            for (var category in restaurants.categories)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    for (var menuItem in category.menuItems)
                      ListTile(
                        title: Text(menuItem.name),
                        subtitle: Text(menuItem.description),
                        trailing: Text('\$${menuItem.price.toString()}'),
                      )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class SimpleCard extends StatelessWidget {
//   const SimpleCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2.0, // Controls the shadow depth
//       margin: EdgeInsets.all(16.0), // Margin around the card
//       child: Padding(
//         padding: const EdgeInsets.all(16.0), // Padding inside the card
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Card Title',
//               style: TextStyle(
//                 fontSize: 18.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 8.0),
//             Text(
//               'Card Subtitle or Description',
//               style: TextStyle(
//                 fontSize: 14.0,
//                 color: Colors.grey,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

