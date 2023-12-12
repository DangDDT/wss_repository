class PartnerPaymentHistory {
  PartnerPaymentHistory({
    required this.id,
    required this.code,
    required this.partnerId,
    required this.orderId,
    required this.status,
    required this.total,
    required this.imageUrl,
    required this.createDate,
    required this.order,
    required this.partner,
  });

  final String? id;
  final String? code;
  final String? partnerId;
  final String? orderId;
  final String? status;
  final num? total;
  final dynamic imageUrl;
  final DateTime? createDate;
  final _Order? order;
  final _Partner? partner;

  factory PartnerPaymentHistory.fromJson(Map<String, dynamic> json) {
    return PartnerPaymentHistory(
      id: json["id"],
      code: json["code"],
      partnerId: json["partnerId"],
      orderId: json["orderId"],
      status: json["status"],
      total: json["total"],
      imageUrl: json["imageUrl"],
      createDate: DateTime.tryParse(json["createDate"] ?? ""),
      order: json["order"] == null ? null : _Order.fromJson(json["order"]),
      partner:
          json["partner"] == null ? null : _Partner.fromJson(json["partner"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "partnerId": partnerId,
        "orderId": orderId,
        "status": status,
        "total": total,
        "imageUrl": imageUrl,
        "createDate": createDate?.toIso8601String(),
        "order": order?.toJson(),
        "partner": partner?.toJson(),
      };
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
    required this.email,
    required this.voucherId,
    required this.comboId,
    required this.totalAmount,
    required this.totalAmountRequest,
    required this.description,
    required this.createDate,
    required this.createBy,
    required this.statusPayment,
    required this.statusOrder,
    required this.combo,
    required this.customer,
    required this.voucher,
    required this.weddingInformation,
    required this.orderDetails,
    required this.comboOrderDetails,
    required this.comboOrderStatus,
  });

  final String? code;
  final String? id;
  final String? customerId;
  final String? weddingInformationId;
  final String? fullname;
  final String? address;
  final String? phone;
  final dynamic email;
  final dynamic voucherId;
  final dynamic comboId;
  final num? totalAmount;
  final num? totalAmountRequest;
  final String? description;
  final DateTime? createDate;
  final String? createBy;
  final String? statusPayment;
  final String? statusOrder;
  final dynamic combo;
  final dynamic customer;
  final dynamic voucher;
  final dynamic weddingInformation;
  final List<_OrderDetail> orderDetails;
  final dynamic comboOrderDetails;
  final dynamic comboOrderStatus;

  factory _Order.fromJson(Map<String, dynamic> json) {
    return _Order(
      code: json["code"],
      id: json["id"],
      customerId: json["customerId"],
      weddingInformationId: json["weddingInformationId"],
      fullname: json["fullname"],
      address: json["address"],
      phone: json["phone"],
      email: json["email"],
      voucherId: json["voucherId"],
      comboId: json["comboId"],
      totalAmount: json["totalAmount"],
      totalAmountRequest: json["totalAmountRequest"],
      description: json["description"],
      createDate: DateTime.tryParse(json["createDate"] ?? ""),
      createBy: json["createBy"],
      statusPayment: json["statusPayment"],
      statusOrder: json["statusOrder"],
      combo: json["combo"],
      customer: json["customer"],
      voucher: json["voucher"],
      weddingInformation: json["weddingInformation"],
      orderDetails: json["orderDetails"] == null
          ? []
          : List<_OrderDetail>.from(
              json["orderDetails"]!.map((x) => _OrderDetail.fromJson(x))),
      comboOrderDetails: json["comboOrderDetails"],
      comboOrderStatus: json["comboOrderStatus"],
    );
  }

  Map<String, dynamic> toJson() => {
        "code": code,
        "id": id,
        "customerId": customerId,
        "weddingInformationId": weddingInformationId,
        "fullname": fullname,
        "address": address,
        "phone": phone,
        "email": email,
        "voucherId": voucherId,
        "comboId": comboId,
        "totalAmount": totalAmount,
        "totalAmountRequest": totalAmountRequest,
        "description": description,
        "createDate": createDate?.toIso8601String(),
        "createBy": createBy,
        "statusPayment": statusPayment,
        "statusOrder": statusOrder,
        "combo": combo,
        "customer": customer,
        "voucher": voucher,
        "weddingInformation": weddingInformation,
        "orderDetails": orderDetails.map((x) => x.toJson()).toList(),
        "comboOrderDetails": comboOrderDetails,
        "comboOrderStatus": comboOrderStatus,
      };
}

class _OrderDetail {
  _OrderDetail({
    required this.id,
    required this.orderId,
    required this.serviceId,
    required this.partnerId,
    required this.address,
    required this.startTime,
    required this.endTime,
    required this.price,
    required this.total,
    required this.description,
    required this.status,
    required this.service,
    required this.feedbacks,
    required this.tasks,
    required this.inCombo,
  });

  final String? id;
  final String? orderId;
  final String? serviceId;
  final dynamic partnerId;
  final String? address;
  final DateTime? startTime;
  final DateTime? endTime;
  final num? price;
  final dynamic total;
  final String? description;
  final String? status;
  final _Service? service;
  final List<dynamic> feedbacks;
  final List<dynamic> tasks;
  final bool? inCombo;

  factory _OrderDetail.fromJson(Map<String, dynamic> json) {
    return _OrderDetail(
      id: json["id"],
      orderId: json["orderId"],
      serviceId: json["serviceId"],
      partnerId: json["partnerId"],
      address: json["address"],
      startTime: DateTime.tryParse(json["startTime"] ?? ""),
      endTime: DateTime.tryParse(json["endTime"] ?? ""),
      price: json["price"],
      total: json["total"],
      description: json["description"],
      status: json["status"],
      service:
          json["service"] == null ? null : _Service.fromJson(json["service"]),
      feedbacks: json["feedbacks"] == null
          ? []
          : List<dynamic>.from(json["feedbacks"]!.map((x) => x)),
      tasks: json["tasks"] == null
          ? []
          : List<dynamic>.from(json["tasks"]!.map((x) => x)),
      inCombo: json["inCombo"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "orderId": orderId,
        "serviceId": serviceId,
        "partnerId": partnerId,
        "address": address,
        "startTime": startTime?.toIso8601String(),
        "endTime": endTime?.toIso8601String(),
        "price": price,
        "total": total,
        "description": description,
        "status": status,
        "service": service?.toJson(),
        "feedbacks": feedbacks.map((x) => x).toList(),
        "tasks": tasks.map((x) => x).toList(),
        "inCombo": inCombo,
      };
}

class _Service {
  _Service({
    required this.id,
    required this.code,
    required this.name,
    required this.coverUrl,
    required this.quantity,
    required this.category,
    required this.currentPrices,
    required this.serviceImages,
    required this.comboServices,
    required this.categoryId,
    required this.unit,
    required this.description,
    required this.status,
    required this.used,
    required this.totalRevenue,
    required this.rating,
    required this.totalFeedback,
    required this.reason,
    required this.createDate,
    required this.updateDate,
    required this.createByNavigation,
    required this.createBy,
    required this.isOwnerService,
  });

  final String? id;
  final String? code;
  final String? name;
  final String? coverUrl;
  final num? quantity;
  final dynamic category;
  final dynamic currentPrices;
  final List<dynamic> serviceImages;
  final List<dynamic> comboServices;
  final String? categoryId;
  final String? unit;
  final String? description;
  final String? status;
  final num? used;
  final num? totalRevenue;
  final num? rating;
  final num? totalFeedback;
  final dynamic reason;
  final DateTime? createDate;
  final DateTime? updateDate;
  final dynamic createByNavigation;
  final String? createBy;
  final bool? isOwnerService;

  factory _Service.fromJson(Map<String, dynamic> json) {
    return _Service(
      id: json["id"],
      code: json["code"],
      name: json["name"],
      coverUrl: json["coverUrl"],
      quantity: json["quantity"],
      category: json["category"],
      currentPrices: json["currentPrices"],
      serviceImages: json["serviceImages"] == null
          ? []
          : List<dynamic>.from(json["serviceImages"]!.map((x) => x)),
      comboServices: json["comboServices"] == null
          ? []
          : List<dynamic>.from(json["comboServices"]!.map((x) => x)),
      categoryId: json["categoryId"],
      unit: json["unit"],
      description: json["description"],
      status: json["status"],
      used: json["used"],
      totalRevenue: json["totalRevenue"],
      rating: json["rating"],
      totalFeedback: json["totalFeedback"],
      reason: json["reason"],
      createDate: DateTime.tryParse(json["createDate"] ?? ""),
      updateDate: DateTime.tryParse(json["updateDate"] ?? ""),
      createByNavigation: json["createByNavigation"],
      createBy: json["createBy"],
      isOwnerService: json["isOwnerService"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "name": name,
        "coverUrl": coverUrl,
        "quantity": quantity,
        "category": category,
        "currentPrices": currentPrices,
        "serviceImages": serviceImages.map((x) => x).toList(),
        "comboServices": comboServices.map((x) => x).toList(),
        "categoryId": categoryId,
        "unit": unit,
        "description": description,
        "status": status,
        "used": used,
        "totalRevenue": totalRevenue,
        "rating": rating,
        "totalFeedback": totalFeedback,
        "reason": reason,
        "createDate": createDate?.toIso8601String(),
        "updateDate": updateDate?.toIso8601String(),
        "createByNavigation": createByNavigation,
        "createBy": createBy,
        "isOwnerService": isOwnerService,
      };
}

class _Partner {
  _Partner({
    required this.id,
    required this.fullname,
    required this.dateOfBirth,
    required this.phone,
    required this.address,
    required this.imageUrl,
    required this.categoryId,
    required this.gender,
    required this.idNavigation,
  });

  final String? id;
  final String? fullname;
  final DateTime? dateOfBirth;
  final String? phone;
  final String? address;
  final String? imageUrl;
  final String? categoryId;
  final String? gender;
  final dynamic idNavigation;

  factory _Partner.fromJson(Map<String, dynamic> json) {
    return _Partner(
      id: json["id"],
      fullname: json["fullname"],
      dateOfBirth: DateTime.tryParse(json["dateOfBirth"] ?? ""),
      phone: json["phone"],
      address: json["address"],
      imageUrl: json["imageUrl"],
      categoryId: json["categoryId"],
      gender: json["gender"],
      idNavigation: json["idNavigation"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "fullname": fullname,
        "dateOfBirth": dateOfBirth?.toIso8601String(),
        "phone": phone,
        "address": address,
        "imageUrl": imageUrl,
        "categoryId": categoryId,
        "gender": gender,
        "idNavigation": idNavigation,
      };
}

/*
{
	"id": "fefaeb1a-bdc1-4386-8279-d9a81f32da25",
	"code": "P0000001",
	"partnerId": "be59de2e-7433-4214-9d4a-4f50d0e56ffd",
	"orderId": "e921e324-17da-4b98-aa82-de3f9354b6b1",
	"status": "ACTIVE",
	"total": 1099995,
	"imageUrl": null,
	"createDate": "2023-11-28T00:47:45.847Z",
	"order": {
		"code": "P0000021",
		"id": "e921e324-17da-4b98-aa82-de3f9354b6b1",
		"customerId": "51273f0f-023a-4ecd-a8f8-839f1eb7841f",
		"weddingInformationId": "e8396fad-d944-4c2b-bbe2-85c3233386d7",
		"fullname": "Trần Quang Huy",
		"address": "61/11 đường hàng tre, long thạch mỹ, quận 9",
		"phone": "+84857367829",
		"email": null,
		"voucherId": null,
		"comboId": null,
		"totalAmount": 1100000,
		"totalAmountRequest": 330000,
		"description": "",
		"createDate": "2023-11-27T17:20:29.86Z",
		"createBy": "51273f0f-023a-4ecd-a8f8-839f1eb7841f",
		"statusPayment": "DONE",
		"statusOrder": "DONE",
		"combo": null,
		"customer": null,
		"voucher": null,
		"weddingInformation": null,
		"orderDetails": [
			{
				"id": "9968ee6c-6615-4e15-9ba8-215e607f4de7",
				"orderId": "e921e324-17da-4b98-aa82-de3f9354b6b1",
				"serviceId": "a9f557b6-ab75-4ffb-89d1-a139f94733e3",
				"partnerId": null,
				"address": "vinhomes",
				"startTime": "2023-11-29T00:19:56.443Z",
				"endTime": "2023-11-30T00:19:56.443Z",
				"price": 1100000,
				"total": null,
				"description": "",
				"status": "DONE",
				"service": {
					"id": "a9f557b6-ab75-4ffb-89d1-a139f94733e3",
					"code": "P0000001",
					"name": "Xe Honda-4 chỗ",
					"coverUrl": "https://api.loveweddingservice.shop/upload/73ad2001-b59b-45af-9bb3-3bd76977ab1b.jpg",
					"quantity": 1,
					"category": null,
					"currentPrices": null,
					"serviceImages": [],
					"comboServices": [],
					"categoryId": "30e2de7f-3186-4fd9-b99b-7f8de1e03534",
					"unit": "chiếc ",
					"description": "Xe cưới 4 chỗ, Honda civic 2022, bs: 59-7891301",
					"status": "Active",
					"used": 2,
					"totalRevenue": 0,
					"rating": 0,
					"totalFeedback": 0,
					"reason": null,
					"createDate": "2023-11-23T21:50:01.173Z",
					"updateDate": "2023-11-23T21:59:53.543Z",
					"createByNavigation": null,
					"createBy": "be59de2e-7433-4214-9d4a-4f50d0e56ffd",
					"isOwnerService": false
				},
				"feedbacks": [],
				"tasks": [],
				"inCombo": false
			}
		],
		"comboOrderDetails": null,
		"comboOrderStatus": null
	},
	"partner": {
		"id": "be59de2e-7433-4214-9d4a-4f50d0e56ffd",
		"fullname": "Phạm Hữu Nghĩa",
		"dateOfBirth": "2000-11-15T17:00:00Z",
		"phone": "+84966222514",
		"address": "64/15 Hàng Tre,  Phường Long Thạnh Mỹ, Quận 9,TP.HCM",
		"imageUrl": "https://api.loveweddingservice.shop/upload/eb646f6a-00ac-4abe-af4b-9c6afca180b9.jpg",
		"categoryId": "30e2de7f-3186-4fd9-b99b-7f8de1e03534",
		"gender": "Male",
		"idNavigation": null
	}
}*/