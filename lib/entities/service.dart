// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'service_image.dart';

class Service {
  final String? id;
  final String? code;
  final String? name;
  final int? quantity;
  final Category? category;
  final CurrentPrices? currentPrices;
  final List<ServiceImages>? serviceImages;
  final String? categoryId;
  final String? unit;
  final String? description;
  final String? status;
  final int? used;
  final double? rating;

  Service({
    this.id,
    this.code,
    this.name,
    this.quantity,
    this.category,
    this.currentPrices,
    this.serviceImages,
    this.categoryId,
    this.unit,
    this.description,
    this.status,
    this.used,
    this.rating,
  });

  factory Service.fromMap(Map<String, dynamic> map) {
    return Service(
      id: map['id'] != null ? map['id'] as String : null,
      code: map['code'] != null ? map['code'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      quantity: map['quantity'] != null ? map['quantity'] as int : null,
      category: map['category'] != null
          ? Category.fromMap(map['category'] as Map<String, dynamic>)
          : null,
      currentPrices: map['currentPrices'] != null
          ? CurrentPrices.fromMap(map['currentPrices'] as Map<String, dynamic>)
          : null,
      serviceImages: map['serviceImages'] != null
          ? (map['serviceImages'] as List)
              .map((e) => ServiceImages.fromMap(e as Map<String, dynamic>))
              .toList()
          : null,
      categoryId:
          map['categoryId'] != null ? map['categoryId'] as String : null,
      unit: map['unit'] != null ? map['unit'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
      used: map['used'] != null ? map['used'] as int : null,
      rating: map['rating'] != null ? map['rating'] as double : null,
    );
  }
}

class Category {
  final String? id;
  final String? name;
  final String? imageUrl;
  final String? description;
  final String? status;
  final bool? isOrderLimit;

  Category({
    this.id,
    this.name,
    this.imageUrl,
    this.description,
    this.status,
    this.isOrderLimit,
  });

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
      isOrderLimit:
          map['isOrderLimit'] != null ? map['isOrderLimit'] as bool : null,
    );
  }
}

class CurrentPrices {
  final DateTime? dateOfApply;
  final double? price;

  CurrentPrices({
    this.dateOfApply,
    this.price,
  });

  factory CurrentPrices.fromMap(Map<String, dynamic> map) {
    return CurrentPrices(
      dateOfApply: map['dateOfApply'] != null
          ? DateTime.parse(map['dateOfApply'] as String)
          : null,
      price: map['price'] != null ? map['price'] as double : null,
    );
  }
}
