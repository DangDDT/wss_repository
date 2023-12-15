// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_element, library_private_types_in_public_api

class DayOff {
  final String? id;
  final String? code;
  final String? partnerId;
  final DateTime? day;
  final String? reason;
  final String? status;
  final _Service? service;

  DayOff({
    this.id,
    this.code,
    this.partnerId,
    this.day,
    this.reason,
    this.status,
    this.service,
  });

  factory DayOff.fromMap(Map<String, dynamic> map) {
    return DayOff(
      id: map['id'] != null ? map['id'] as String : null,
      code: map['code'] != null ? map['code'] as String : null,
      partnerId: map['partnerId'] != null ? map['partnerId'] as String : null,
      day: map['day'] != null ? DateTime.parse(map['day']).toLocal() : null,
      reason: map['reason'] != null ? map['reason'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
      service: map['service'] != null
          ? _Service.fromJson(map['service'] as Map<String, dynamic>)
          : null,
    );
  }
}

class _Service {
  _Service({
    required this.id,
    required this.code,
    required this.name,
    required this.coverUrl,
    required this.quantity,
    required this.serviceImages,
    required this.categoryId,
    required this.unit,
    required this.description,
    required this.status,
    required this.used,
    required this.totalRenenue,
    required this.rating,
    required this.reason,
    required this.createDate,
    required this.updateDate,
  });

  final String? id;
  final String? code;
  final String? name;
  final String? coverUrl;
  final num? quantity;
  final List<String> serviceImages;
  final String? categoryId;
  final String? unit;
  final String? description;
  final String? status;
  final num? used;
  final num? totalRenenue;
  final num? rating;
  final String? reason;
  final DateTime? createDate;
  final DateTime? updateDate;

  factory _Service.fromJson(Map<String, dynamic> json) {
    return _Service(
      id: json["id"],
      code: json["code"],
      name: json["name"],
      coverUrl: json["coverUrl"],
      quantity: json["quantity"],
      serviceImages: json["serviceImages"] == null
          ? []
          : List<String>.from(json["serviceImages"]!.map((x) => x)),
      categoryId: json["categoryId"],
      unit: json["unit"],
      description: json["description"],
      status: json["status"],
      used: json["used"],
      totalRenenue: json["totalRenenue"],
      rating: json["rating"],
      reason: json["reason"],
      createDate: DateTime.tryParse(json["createDate"] ?? "")?.toLocal(),
      updateDate: DateTime.tryParse(json["updateDate"] ?? "")?.toLocal(),
    );
  }
}

/*
{
	"id": "1b98214b-cb30-4de6-ac9b-a0c1f332e362",
	"code": "P0000014",
	"name": "Ford Focus Màu đỏ 4 chỗ",
	"coverUrl": "https://images.prismic.io/carwow/94aa2d30-f2a9-4fde-92d1-6614051a08dc_Ford+Focus+2023+exterior+17.jpg",
	"quantity": 4,
	"serviceImages": [],
	"categoryId": "fada5a55-6c22-4d80-90d7-a27a0fafde79",
	"unit": "chiếc/ngày",
	"description": "59A-56789 Màu đỏ 4 chỗ, nội thất xe đầy đủ",
	"status": "Active",
	"used": 0,
	"totalRenenue": 0,
	"rating": 0,
	"reason": "string",
	"createDate": "2023-10-30T08:24:47Z",
	"updateDate": "2023-10-31T14:15:55.263Z"
}*/