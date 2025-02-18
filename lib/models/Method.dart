import 'package:cloud_firestore/cloud_firestore.dart';
class Method {
  final String id;
  final String name;

  Method({required this.id, required this.name});

  factory Method.fromMap(String id, Map<String, dynamic> data) {
    return Method(
      id: id,
      name: data['method_name'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'method_name': name,
    };
  }
}