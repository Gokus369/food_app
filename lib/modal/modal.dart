class Restaurant {
  final String id;
  final String name;
  final String imageUrl;
  final List<Category> categories;

  Restaurant({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.categories,
  });
}

class Category {
  final String id;
  final String name;
  final List<MenuItem> menuItems;

  Category({
    required this.id,
    required this.name,
    required this.menuItems,
  });
}

class MenuItem {
  final String id;
  final String name;
  final String description;
  final double price;

  MenuItem({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
  });
}

