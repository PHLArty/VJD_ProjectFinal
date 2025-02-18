import 'package:cloud_firestore/cloud_firestore.dart';
class Category {
  final String id;
  final String name;

  Category({required this.id, required this.name});

  factory Category.fromMap(String id, Map<String, dynamic> data) {
    return Category(
      id: id,
      name: data['categories_name'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'categories_name': name,
    };
  }
}
