import 'package:cloud_firestore/cloud_firestore.dart';
class User{
  final String id;
  final String userName;
  final String email;
  final String phone;
  final String address;
  final DateTime date;
  final String roleId;

  User({
    required this.id,
    required this.userName,
    required this.email,
    required this.phone,
    required this.address,
    required this.date,
    required this.roleId,
  });

  factory User.fromMap(String id, Map<String, dynamic> data) {
    return User(
      id: id,
      userName: data['user_name'] ?? '',
      email: data['email'] ?? '',
      phone: data['phone'] ?? '',
      address: data['address'] ?? '',
      date: (data['date'] as Timestamp).toDate(),
      roleId: data['role_id'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'user_name': userName,
      'email': email,
      'phone': phone,
      'address': address,
      'date': date,
      'role_id': roleId,
    };
  }
}