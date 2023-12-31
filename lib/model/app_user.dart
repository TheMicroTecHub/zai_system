import 'package:cloud_firestore/cloud_firestore.dart';

class AppUser {
  String? uid;
  String? profileUrl;
  String? email;
  String? name;
  String? image;
  Timestamp? createdAt;
  String? phone;

  AppUser({
    this.uid,
    this.email,
    this.name,
    this.createdAt,
    this.image,
    this.phone,
  });

  // receiving data from server
  static AppUser fromMap(Map<String, dynamic> map) {
    return AppUser(
      uid: map['uid'],
      email: map['email'],
      name: map['name'],
      createdAt: map['created_at'],
      image: map['image'],
      phone: map['phone'],
    );
  }

  // sending data to our server
  static Map<String, dynamic> toMap(AppUser userM) {
    return {
      'uid': userM.uid,
      'email': userM.email,
      'name': userM.name,
      'created_at': Timestamp.now(),
      'image': userM.image,
      'phone': userM.phone,
    };
  }
}
