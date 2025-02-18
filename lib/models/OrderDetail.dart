import 'package:cloud_firestore/cloud_firestore.dart';
class OrderDetail {
  final String id;
  final String orderId;
  final String productId;
  final int quantity;

  OrderDetail({
    required this.id,
    required this.orderId,
    required this.productId,
    required this.quantity,
  });

  factory OrderDetail.fromMap(String id, Map<String, dynamic> data) {
    return OrderDetail(
      id: id,
      orderId: data['oders_id'] ?? '',
      productId: data['products_id'] ?? '',
      quantity: data['quantity'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'oders_id': orderId,
      'products_id': productId,
      'quantity': quantity,
    };
  }
}
