import 'package:cloud_firestore/cloud_firestore.dart';

class Role {
  final String id;
  final String name;

  Role({required this.id, required this.name});

  factory Role.fromMap(String id, Map<String, dynamic> data) {
    return Role(
      id: id,
      name: data['name'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }
}