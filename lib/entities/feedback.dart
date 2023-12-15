// ignore_for_file: public_member_api_docs, sort_constructors_first, library_private_types_in_public_api

import 'service_image.dart';

class Feedback {
  final String? id;
  final String? content;
  final DateTime? createDate;
  final int? rating;
  final _Service? service;
  final _User? user;
  final String? status;

  Feedback({
    this.id,
    this.content,
    this.createDate,
    this.rating,
    this.service,
    this.user,
    this.status,
  });

  factory Feedback.fromMap(Map<String, dynamic> map) {
    return Feedback(
      id: map['id'] != null ? map['id'] as String : null,
      content: map['content'] != null ? map['content'] as String : null,
      createDate: map['createDate'] != null
          ? DateTime.parse(map['createDate']).toLocal()
          : null,
      rating: map['rating'] != null ? map['rating'] as int : null,
      service: map['service'] != null
          ? _Service.fromMap(map['service'] as Map<String, dynamic>)
          : null,
      user: map['user'] != null
          ? _User.fromMap(map['user'] as Map<String, dynamic>)
          : null,
      status: map['status'] != null ? map['status'] as String : null,
    );
  }
}

class _Service {
  final String? id;
  final String? name;
  final String? coverUrl;
  final int? quantity;
  final List<ServiceImages>? serviceImages;
  final String? categoryId;
  final String? description;
  final String? status;
  final int? used;
  final double? rating;

  _Service({
    this.id,
    this.name,
    this.coverUrl,
    this.quantity,
    this.serviceImages,
    this.categoryId,
    this.description,
    this.status,
    this.used,
    this.rating,
  });

  factory _Service.fromMap(Map<String, dynamic> map) {
    return _Service(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      coverUrl: map['coverUrl'] != null ? map['coverUrl'] as String : null,
      quantity: map['quantity'] != null ? map['quantity'] as int : null,
      serviceImages: map['serviceImages'] != null
          ? List<ServiceImages>.from(
              (map['serviceImages']).map<ServiceImages?>(
                (x) => ServiceImages.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      categoryId:
          map['categoryId'] != null ? map['categoryId'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
      used: map['used'] != null ? map['used'] as int : null,
      rating: map['rating'] != null ? map['rating'] as double : null,
    );
  }
}

class _User {
  final String? fullname;
  final DateTime? dateOfBirth;
  final String? phone;
  final String? address;
  final String? imageUrl;
  final String? categoryId;
  final String? gender;

  _User({
    this.fullname,
    this.dateOfBirth,
    this.phone,
    this.address,
    this.imageUrl,
    this.categoryId,
    this.gender,
  });

  factory _User.fromMap(Map<String, dynamic> map) {
    return _User(
      fullname: map['fullname'] != null ? map['fullname'] as String : null,
      dateOfBirth: map['dateOfBirth'] != null
          ? DateTime.parse(map['dateOfBirth']).toLocal()
          : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      address: map['address'] != null ? map['address'] as String : null,
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : null,
      categoryId:
          map['categoryId'] != null ? map['categoryId'] as String : null,
      gender: map['gender'] != null ? map['gender'] as String : null,
    );
  }
}
