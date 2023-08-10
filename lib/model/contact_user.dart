import 'package:cloud_firestore/cloud_firestore.dart';

class AppUser {
  Timestamp? uid;

  String? email;
  String? name;
  Timestamp? createdAt;
  String? phone;
  String? subject;
  String? message;
  // String? city;

  AppUser(
      {this.uid,
      this.email,
      this.name,
      this.createdAt,
      this.phone,
      this.subject,
      this.message});

  // receiving data from server
  static AppUser fromMap(Map<String, dynamic> map) {
    return AppUser(
      uid: map['uid'],
      email: map['email'],
      name: map['name'],
      createdAt: map['created_at'],
      phone: map['phone'],
      subject: map['subject'],
      message: map['message'],
    );
  }

  // sending data to our server
  static Map<String, dynamic> toMap(AppUser userM) {
    return {
      'uid': DateTime.now().microsecondsSinceEpoch.toString(),
      'email': userM.email,
      'name': userM.name,
      'created_at': Timestamp.now(),
      'phone': userM.phone,
      'subject': userM.subject,
      'message': userM.message,
    };
  }
}
