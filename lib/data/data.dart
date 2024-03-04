
import 'package:swiggy/modal/modal.dart';



List<Restaurant> dummyRestaurants = [
  Restaurant(
    id: '1',
    name: 'Burger Haven',
    imageUrl: 'assets/burger_haven.jpg',
    categories: [
      Category(
        id: '1',
        name: 'Burgers',
        menuItems: [
          MenuItem(
            id: '1',
            name: 'Classic Burger',
            description: 'Juicy beef patty with lettuce, tomato, and mayo',
            price: 8.99,
          ),
          MenuItem(
            id: '2',
            name: 'Cheeseburger',
            description: 'Classic burger with melted cheese',
            price: 9.99,
          ),
          // Add more burger items
        ],
      ),
      Category(
        id: '2',
        name: 'Fries',
        menuItems: [
          MenuItem(
            id: '3',
            name: 'Classic Fries',
            description: 'Crispy golden fries with salt',
            price: 3.99,
          ),
          MenuItem(
            id: '4',
            name: 'Cheese Fries',
            description: 'Fries topped with melted cheese',
            price: 4.99,
          ),
          // Add more fries items
        ],
      ),
      // Add more categories
    ],
  ),
  // Add more restaurants
];