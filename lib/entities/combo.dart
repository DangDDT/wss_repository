// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'service_image.dart';

class Combo {
  final String? id;
  final String? name;
  final double? discountValueCombo;
  final double? disountPrice;
  final double? totalAmount;
  final String? description;
  final String? status;
  final List<_ComboService>? comboServices;

  Combo({
    this.id,
    this.name,
    this.discountValueCombo,
    this.disountPrice,
    this.totalAmount,
    this.description,
    this.status,
    this.comboServices,
  });

  factory Combo.fromMap(Map<String, dynamic> map) {
    return Combo(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      discountValueCombo: map['discountValueCombo'] != null
          ? map['discountValueCombo'] as double
          : null,
      disountPrice:
          map['disountPrice'] != null ? map['disountPrice'] as double : null,
      totalAmount:
          map['totalAmount'] != null ? map['totalAmount'] as double : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
      comboServices: map['comboServices'] != null
          ? List<_ComboService>.from((map['comboServices'] as List<dynamic>)
              .map((e) => _ComboService.fromMap(e as Map<String, dynamic>)))
          : null,
    );
  }
}

class _ComboService {
  final String? id;
  final String? name;
  final int? quantity;
  final _CurrentPrices? currentPrices;
  final List<ServiceImages>? serviceImages;
  final String? categoryId;
  final String? unit;

  _ComboService({
    this.id,
    this.name,
    this.quantity,
    this.currentPrices,
    this.serviceImages,
    this.categoryId,
    this.unit,
  });

  factory _ComboService.fromMap(Map<String, dynamic> map) {
    return _ComboService(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      quantity: map['quantity'] != null ? map['quantity'] as int : null,
      currentPrices: map['currentPrices'] != null
          ? _CurrentPrices.fromMap(map['currentPrices'] as Map<String, dynamic>)
          : null,
      serviceImages: map['serviceImages'] != null
          ? List<ServiceImages>.from((map['serviceImages'] as List<dynamic>)
              .map((e) => ServiceImages.fromMap(e as Map<String, dynamic>)))
          : null,
      categoryId:
          map['categoryId'] != null ? map['categoryId'] as String : null,
      unit: map['unit'] != null ? map['unit'] as String : null,
    );
  }
}

class _CurrentPrices {
  final String? dateOfApply;
  final double? price;

  _CurrentPrices({
    this.dateOfApply,
    this.price,
  });

  factory _CurrentPrices.fromMap(Map<String, dynamic> map) {
    return _CurrentPrices(
      dateOfApply:
          map['dateOfApply'] != null ? map['dateOfApply'] as String : null,
      price: map['price'] != null ? map['price'] as double : null,
    );
  }
}
