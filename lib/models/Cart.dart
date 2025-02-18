import 'package:cloud_firestore/cloud_firestore.dart';
class Cart {
  final String id;
  final String userId;
  final String productId;
  final int quantity;

  Cart({
    required this.id,
    required this.userId,
    required this.productId,
    required this.quantity,
  });

  factory Cart.fromMap(String id, Map<String, dynamic> data) {
    return Cart(
      id: id,
      userId: data['user_id'] ?? '',
      productId: data['product_id'] ?? '',
      quantity: data['quantity'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'user_id': userId,
      'product_id': productId,
      'quantity': quantity,
    };
  }
}