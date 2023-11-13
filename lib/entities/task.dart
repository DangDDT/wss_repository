// ignore_for_file: library_private_types_in_public_api

class Task {
  Task({
    required this.id,
    required this.code,
    required this.partner,
    required this.service,
    required this.order,
    required this.taskName,
    required this.status,
    required this.imageEvidence,
    required this.createBy,
    required this.comments,
    required this.startDate,
    required this.endDate,
  });

  final String? id;
  final String? code;
  final _Partner? partner;
  final _Service? service;
  final _Order? order;
  final String? taskName;
  final String? status;
  final String? imageEvidence;
  final _CreateBy? createBy;
  final List<_Comment> comments;
  final DateTime? startDate;
  final DateTime? endDate;

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json["id"],
      code: json["code"],
      partner:
          json["partner"] == null ? null : _Partner.fromJson(json["partner"]),
      service:
          json["service"] == null ? null : _Service.fromJson(json["service"]),
      order: json["order"] == null ? null : _Order.fromJson(json["order"]),
      taskName: json["taskName"],
      status: json["status"],
      imageEvidence: json["imageEvidence"],
      createBy: json["createBy"] == null
          ? null
          : _CreateBy.fromJson(json["createBy"]),
      comments: json["comments"] == null
          ? []
          : List<_Comment>.from(
              json["comments"]!.map((x) => _Comment.fromJson(x))),
      startDate: DateTime.tryParse(json["startDate"] ?? ""),
      endDate: DateTime.tryParse(json["endDate"] ?? ""),
    );
  }
}

class _Comment {
  _Comment({
    required this.id,
    required this.taskId,
    required this.content,
    required this.createDate,
    required this.createBy,
  });

  final String? id;
  final String? taskId;
  final String? content;
  final DateTime? createDate;
  final _Partner? createBy;

  factory _Comment.fromJson(Map<String, dynamic> json) {
    return _Comment(
      id: json["id"],
      taskId: json["taskId"],
      content: json["content"],
      createDate: DateTime.tryParse(json["createDate"] ?? ""),
      createBy:
          json["createBy"] == null ? null : _Partner.fromJson(json["createBy"]),
    );
  }
}

class _Partner {
  _Partner({
    required this.fullname,
    required this.dateOfBirth,
    required this.phone,
    required this.address,
    required this.imageUrl,
    required this.categoryId,
    required this.gender,
  });

  final String? fullname;
  final DateTime? dateOfBirth;
  final String? phone;
  final String? address;
  final String? imageUrl;
  final String? categoryId;
  final String? gender;

  factory _Partner.fromJson(Map<String, dynamic> json) {
    return _Partner(
      fullname: json["fullname"],
      dateOfBirth: DateTime.tryParse(json["dateOfBirth"] ?? ""),
      phone: json["phone"],
      address: json["address"],
      imageUrl: json["imageUrl"],
      categoryId: json["categoryId"],
      gender: json["gender"],
    );
  }
}

class _CreateBy {
  _CreateBy({
    required this.fullname,
    required this.dateOfBirth,
    required this.phone,
    required this.address,
    required this.gender,
  });

  final String? fullname;
  final DateTime? dateOfBirth;
  final String? phone;
  final String? address;
  final String? gender;

  factory _CreateBy.fromJson(Map<String, dynamic> json) {
    return _CreateBy(
      fullname: json["fullname"],
      dateOfBirth: DateTime.tryParse(json["dateOfBirth"] ?? ""),
      phone: json["phone"],
      address: json["address"],
      gender: json["gender"],
    );
  }
}

class _Order {
  _Order({
    required this.code,
    required this.id,
    required this.customerId,
    required this.weddingInformationId,
    required this.fullname,
    required this.address,
    required this.phone,
    required this.comboId,
    required this.totalAmount,
    required this.totalAmountRequest,
    required this.description,
    required this.createDate,
    required this.createBy,
    required this.statusPayment,
    required this.statusOrder,
    required this.customer,
    required this.weddingInformation,
    required this.orderDetails,
  });

  final String? code;
  final String? id;
  final String? customerId;
  final String? weddingInformationId;
  final String? fullname;
  final String? address;
  final String? phone;
  final String? comboId;
  final num? totalAmount;
  final num? totalAmountRequest;
  final String? description;
  final DateTime? createDate;
  final String? createBy;
  final String? statusPayment;
  final String? statusOrder;
  final _CreateBy? customer;
  final _WeddingInformation? weddingInformation;
  final List<_OrderDetail> orderDetails;

  factory _Order.fromJson(Map<String, dynamic> json) {
    return _Order(
      code: json["code"],
      id: json["id"],
      customerId: json["customerId"],
      weddingInformationId: json["weddingInformationId"],
      fullname: json["fullname"],
      address: json["address"],
      phone: json["phone"],
      comboId: json["comboId"],
      totalAmount: json["totalAmount"],
      totalAmountRequest: json["totalAmountRequest"],
      description: json["description"],
      createDate: DateTime.tryParse(json["createDate"] ?? ""),
      createBy: json["createBy"],
      statusPayment: json["statusPayment"],
      statusOrder: json["statusOrder"],
      customer: json["customer"] == null
          ? null
          : _CreateBy.fromJson(json["customer"]),
      weddingInformation: json["weddingInformation"] == null
          ? null
          : _WeddingInformation.fromJson(json["weddingInformation"]),
      orderDetails: json["orderDetails"] == null
          ? []
          : List<_OrderDetail>.from(
              json["orderDetails"]!.map((x) => _OrderDetail.fromJson(x))),
    );
  }
}

class _OrderDetail {
  _OrderDetail({
    required this.id,
    required this.orderId,
    required this.serviceId,
    required this.address,
    required this.startTime,
    required this.endTime,
    required this.price,
    required this.description,
    required this.status,
    required this.service,
  });

  final String? id;
  final String? orderId;
  final String? serviceId;
  final String? address;
  final DateTime? startTime;
  final DateTime? endTime;
  final num? price;
  final String? description;
  final String? status;
  final _Service? service;

  factory _OrderDetail.fromJson(Map<String, dynamic> json) {
    return _OrderDetail(
      id: json["id"],
      orderId: json["orderId"],
      serviceId: json["serviceId"],
      address: json["address"],
      startTime: DateTime.tryParse(json["startTime"] ?? ""),
      endTime: DateTime.tryParse(json["endTime"] ?? ""),
      price: json["price"],
      description: json["description"],
      status: json["status"],
      service:
          json["service"] == null ? null : _Service.fromJson(json["service"]),
    );
  }
}

class _Service {
  _Service({
    required this.id,
    required this.code,
    required this.name,
    required this.quantity,
    required this.serviceImages,
    required this.categoryId,
    required this.description,
    required this.status,
    required this.used,
    required this.totalRenenue,
    required this.rating,
    required this.createDate,
    required this.updateDate,
  });

  final String? id;
  final String? code;
  final String? name;
  final num? quantity;
  final List<String> serviceImages;
  final String? categoryId;
  final String? description;
  final String? status;
  final num? used;
  final num? totalRenenue;
  final num? rating;
  final DateTime? createDate;
  final DateTime? updateDate;

  factory _Service.fromJson(Map<String, dynamic> json) {
    return _Service(
      id: json["id"],
      code: json["code"],
      name: json["name"],
      quantity: json["quantity"],
      serviceImages: json["serviceImages"] == null
          ? []
          : List<String>.from(json["serviceImages"].map((x) => x)),
      categoryId: json["categoryId"],
      description: json["description"],
      status: json["status"],
      used: json["used"],
      totalRenenue: json["totalRenenue"],
      rating: json["rating"],
      createDate: DateTime.tryParse(json["createDate"] ?? ""),
      updateDate: DateTime.tryParse(json["updateDate"] ?? ""),
    );
  }
}

class _WeddingInformation {
  _WeddingInformation({
    required this.id,
    required this.nameGroom,
    required this.nameBride,
    required this.nameBrideFather,
    required this.nameBrideMother,
    required this.nameGroomFather,
    required this.nameGroomMother,
    required this.weddingDay,
    required this.imageUrl,
  });

  final String? id;
  final String? nameGroom;
  final String? nameBride;
  final String? nameBrideFather;
  final String? nameBrideMother;
  final String? nameGroomFather;
  final String? nameGroomMother;
  final DateTime? weddingDay;
  final String? imageUrl;

  factory _WeddingInformation.fromJson(Map<String, dynamic> json) {
    return _WeddingInformation(
      id: json["id"],
      nameGroom: json["nameGroom"],
      nameBride: json["nameBride"],
      nameBrideFather: json["nameBrideFather"],
      nameBrideMother: json["nameBrideMother"],
      nameGroomFather: json["nameGroomFather"],
      nameGroomMother: json["nameGroomMother"],
      weddingDay: DateTime.tryParse(json["weddingDay"] ?? ""),
      imageUrl: json["imageUrl"],
    );
  }
}

/*
{
	"id": "cc7d4abb-337a-4910-8c80-ff052034b36e",
	"code": "T0037",
	"partner": {
		"fullname": "WPS Test Partner 1",
		"dateOfBirth": "2023-10-21T14:59:26.79Z",
		"phone": "+84369222311",
		"address": "185 Lê Quý Đôn, phường 10, quận 6, TPHCM",
		"imageUrl": "https://api.loveweddingservice.shop/upload/b5139e18-22b9-4f75-bf02-fe1d63c0299f.jpg",
		"categoryId": "6d3d13e2-b358-4351-86eb-05e138f7c55e",
		"gender": "Male"
	},
	"service": {
		"id": "55a4f9ed-6508-4f39-8b25-755dc78978aa",
		"code": "P0000003",
		"name": "Toyota Veloz Màu trắng 7 chỗ",
		"quantity": 1,
		"serviceImages": [],
		"categoryId": "61a145c6-3e45-4909-8386-b537053b8d11",
		"description": "59A-86096 Màu trắng 7 chỗ, nội thất xe đầy đủ",
		"status": "Active",
		"used": 0,
		"totalRenenue": 1000000,
		"rating": 0,
		"createDate": "2023-10-26T21:23:03.787Z",
		"updateDate": "2023-10-31T14:22:31.817Z"
	},
	"order": {
		"code": "P0000042",
		"id": "54d85a45-6d03-45a7-9a9a-9d959268d9ee",
		"customerId": "ee06a0c8-dace-492f-b381-c4b8032f6ef3",
		"weddingInformationId": "00609067-6356-4d68-a364-225d98c605f4",
		"fullname": "Hang",
		"address": "23 dia chi nay ne",
		"phone": "",
		"comboId": "39f54a0c-063a-4eb1-9f8a-82e3afb20cb3",
		"totalAmount": 2200000,
		"totalAmountRequest": 660000,
		"description": "string",
		"createDate": "2023-11-07T16:57:29.82Z",
		"createBy": "ee06a0c8-dace-492f-b381-c4b8032f6ef3",
		"statusPayment": "PENDING",
		"statusOrder": "PENDING",
		"customer": {
			"fullname": "LOL",
			"dateOfBirth": "2023-11-03T10:13:17Z",
			"phone": "+84987654326",
			"address": "123",
			"gender": "Male"
		},
		"weddingInformation": {
			"id": "00609067-6356-4d68-a364-225d98c605f4",
			"nameGroom": "1",
			"nameBride": "1",
			"nameBrideFather": "1",
			"nameBrideMother": "1",
			"nameGroomFather": "1",
			"nameGroomMother": "1",
			"weddingDay": "2023-11-07T02:19:12.627Z",
			"imageUrl": ""
		},
		"orderDetails": [
			{
				"id": "cf4553e8-d5fe-48b3-9b9c-b846b3eaa8a4",
				"orderId": "54d85a45-6d03-45a7-9a9a-9d959268d9ee",
				"serviceId": "55a4f9ed-6508-4f39-8b25-755dc78978aa",
				"address": "23 dia chi cua combo",
				"startTime": "2023-07-11T07:50:29Z",
				"endTime": "2023-07-12T07:50:29Z",
				"price": 1000000,
				"description": "123",
				"status": "ACTIVE",
				"service": {
					"id": "55a4f9ed-6508-4f39-8b25-755dc78978aa",
					"code": "P0000003",
					"name": "Toyota Veloz Màu trắng 7 chỗ",
					"quantity": 1,
					"serviceImages": [],
					"categoryId": "61a145c6-3e45-4909-8386-b537053b8d11",
					"description": "59A-86096 Màu trắng 7 chỗ, nội thất xe đầy đủ",
					"status": "Active",
					"used": 0,
					"totalRenenue": 1000000,
					"rating": 0,
					"createDate": "2023-10-26T21:23:03.787Z",
					"updateDate": "2023-10-31T14:22:31.817Z"
				}
			}
		]
	},
	"taskName": "Dịch vụ Toyota Veloz Màu trắng 7 chỗ của WPS Test Partner 1",
	"status": "EXPECTED",
	"createBy": {
		"fullname": "LOL",
		"dateOfBirth": "2023-11-03T10:13:17Z",
		"phone": "+84987654326",
		"address": "123",
		"gender": "Male"
	},
	"comments": [
		{
			"id": "b75b4d49-9466-4b5e-bd5e-2f4d544ba8d1",
			"taskId": "cc7d4abb-337a-4910-8c80-ff052034b36e",
			"content": "test API",
			"createDate": "2023-11-09T11:00:17.667Z",
			"createBy": {
				"fullname": "WPS Test Partner 1",
				"dateOfBirth": "2023-10-21T14:59:26.79Z",
				"phone": "+84369222311",
				"address": "185 Lê Quý Đôn, phường 10, quận 6, TPHCM",
				"imageUrl": "https://api.loveweddingservice.shop/upload/b5139e18-22b9-4f75-bf02-fe1d63c0299f.jpg",
				"categoryId": "6d3d13e2-b358-4351-86eb-05e138f7c55e",
				"gender": "Male"
			}
		}
	]
}*/