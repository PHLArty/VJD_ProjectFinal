import 'package:cloud_firestore/cloud_firestore.dart';
class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String categoryId;
  final List<String> imageList;
  final String avatar;
  final int quantity;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.categoryId,
    required this.imageList,
    required this.avatar,
    required this.quantity,
  });

  factory Product.fromMap(String id, Map<String, dynamic> data) {
    return Product(
      id: id,
      name: data['products_name'] ?? '',
      description: data['description'] ?? '',
      price: (data['price'] as num).toDouble(),
      categoryId: data['categories_id'] ?? '',
      imageList: List<String>.from(data['images_list'] ?? []),
      avatar: data['avatar'] ?? '',
      quantity: data['quantity'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'products_name': name,
      'description': description,
      'price': price,
      'categories_id': categoryId,
      'images_list': imageList,
      'avatar': avatar,
      'quantity': quantity,
    };
  }
}
