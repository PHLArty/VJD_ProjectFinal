import 'package:cloud_firestore/cloud_firestore.dart';
class Order {
  final String id;
  final String customerName;
  final String address;
  final String comment;
  final String email;
  final String phone;
  final String methodId;

  Order({
    required this.id,
    required this.customerName,
    required this.address,
    required this.comment,
    required this.email,
    required this.phone,
    required this.methodId,
  });

  factory Order.fromMap(String id, Map<String, dynamic> data) {
    return Order(
      id: id,
      customerName: data['customer_name'] ?? '',
      address: data['address'] ?? '',
      comment: data['comment'] ?? '',
      email: data['email'] ?? '',
      phone: data['phone'] ?? '',
      methodId: data['method_id'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'customer_name': customerName,
      'address': address,
      'comment': comment,
      'email': email,
      'phone': phone,
      'method_id': methodId,
    };
  }
}
