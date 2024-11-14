class MyProduct {
  int id;
  String title;
  double price;
  String description;
  String category;
  String image;
  late Rating rating;

  MyProduct({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
  });

  factory MyProduct.fromJson(Map<String, dynamic> json) {
    return MyProduct(
        id: json['id'],
        title: json['title'],
        price: json['price'],
        description: json['description'],
        category: json['category'],
        image: json['image']);
  }
}

enum Category { ELECTRONICS, JEWELERY, MEN_S_CLOTHING, WOMEN_S_CLOTHING }

class Rating {
  double rate;
  int count;

  Rating({
    required this.rate,
    required this.count,
  });
}
