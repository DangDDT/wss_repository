// ignore_for_file: public_member_api_docs, sort_constructors_first, library_private_types_in_public_api, unused_element

class Task {
  final String? id;
  final String? code;
  final _Partner? partner;
  final _Service? service;
  final _OrderDetail? orderDetail;
  final _Order? order;
  final String? taskName;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? status;
  final _CreateBy? createBy;
  final List<_Comment>? comments;

  Task({
    this.id,
    this.code,
    this.partner,
    this.service,
    this.order,
    this.orderDetail,
    this.taskName,
    this.startDate,
    this.endDate,
    this.status,
    this.createBy,
    this.comments,
  });

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'] != null ? map['id'] as String : null,
      code: map['code'] != null ? map['code'] as String : null,
      partner: map['partner'] != null
          ? _Partner.fromMap(map['partner'] as Map<String, dynamic>)
          : null,
      service: map['service'] != null
          ? _Service.fromMap(map['service'] as Map<String, dynamic>)
          : null,
      order: map['order'] != null
          ? _Order.fromJson(map['order'] as Map<String, dynamic>)
          : null,
      orderDetail: map['orderDetail'] != null
          ? _OrderDetail.fromMap(map['orderDetail'] as Map<String, dynamic>)
          : null,
      taskName: map['taskName'] != null ? map['taskName'] as String : null,
      startDate: map['startDate'] != null
          ? DateTime.parse(map['startDate'] as String)
          : null,
      endDate: map['endDate'] != null
          ? DateTime.parse(map['endDate'] as String)
          : null,
      status: map['status'] != null ? map['status'] as String : null,
      createBy: map['createBy'] != null
          ? _CreateBy.fromJson(map['createBy'] as Map<String, dynamic>)
          : null,
      comments: map['comments'] != null
          ? (map['comments'] as List)
              .map((e) => _Comment.fromMap(e as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
}

class _Comment {
  final String? id;
  final String? taskId;
  final String? content;
  final DateTime? createDate;
  final String? createBy;

  _Comment({
    this.id,
    this.taskId,
    this.content,
    this.createDate,
    this.createBy,
  });

  factory _Comment.fromMap(Map<String, dynamic> map) {
    return _Comment(
      id: map['id'] != null ? map['id'] as String : null,
      taskId: map['taskId'] != null ? map['taskId'] as String : null,
      content: map['content'] != null ? map['content'] as String : null,
      createDate: map['createDate'] != null
          ? DateTime.parse(map['createDate'] as String)
          : null,
      createBy: map['createBy'] != null ? map['createBy'] as String : null,
    );
  }
}

class _OrderDetail {
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

  _OrderDetail({
    this.id,
    this.orderId,
    this.serviceId,
    this.address,
    this.startTime,
    this.endTime,
    this.price,
    this.description,
    this.status,
    this.service,
  });

  factory _OrderDetail.fromMap(Map<String, dynamic> map) {
    return _OrderDetail(
      id: map['id'] != null ? map['id'] as String : null,
      orderId: map['orderId'] != null ? map['orderId'] as String : null,
      serviceId: map['serviceId'] != null ? map['serviceId'] as String : null,
      address: map['address'] != null ? map['address'] as String : null,
      startTime: map['startTime'] != null
          ? DateTime.parse(map['startTime'] as String)
          : null,
      endTime: map['endTime'] != null
          ? DateTime.parse(map['endTime'] as String)
          : null,
      price: map['price'] != null ? map['price'] as num : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
      service: map['service'] != null
          ? _Service.fromMap(map['service'] as Map<String, dynamic>)
          : null,
    );
  }
}

class _Service {
  final String? id;
  final String? code;
  final String? name;
  final int? quantity;
  final List<String>? serviceImages;
  final String? categoryId;
  final String? status;
  final int? used;
  final num? rating;

  _Service({
    this.id,
    this.code,
    this.name,
    this.quantity,
    this.serviceImages,
    this.categoryId,
    this.status,
    this.used,
    this.rating,
  });

  factory _Service.fromMap(Map<String, dynamic> map) {
    return _Service(
      id: map['id'] != null ? map['id'] as String : null,
      code: map['code'] != null ? map['code'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      quantity: map['quantity'] != null ? map['quantity'] as int : null,
      serviceImages: map['serviceImages'] != null
          ? (map['serviceImages'] as List).map((e) => e as String).toList()
          : null,
      categoryId:
          map['categoryId'] != null ? map['categoryId'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
      used: map['used'] != null ? map['used'] as int : null,
      rating: map['rating'] != null ? map['rating'] as num : null,
    );
  }
}

class _Partner {
  final String? fullname;
  final DateTime? dateOfBirth;
  final String? phone;
  final String? address;
  final String? imageUrl;
  final String? categoryId;
  final String? gender;

  _Partner({
    this.fullname,
    this.dateOfBirth,
    this.phone,
    this.address,
    this.imageUrl,
    this.categoryId,
    this.gender,
  });

  factory _Partner.fromMap(Map<String, dynamic> map) {
    return _Partner(
      fullname: map['fullname'] != null ? map['fullname'] as String : null,
      dateOfBirth: map['dateOfBirth'] != null
          ? DateTime.parse(map['dateOfBirth'] as String)
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
  final _Customer? customer;

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
          : _Customer.fromJson(json["customer"]),
    );
  }
}

class _Customer {
  _Customer({
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

  factory _Customer.fromJson(Map<String, dynamic> json) {
    return _Customer(
      fullname: json["fullname"],
      dateOfBirth: DateTime.tryParse(json["dateOfBirth"] ?? ""),
      phone: json["phone"],
      address: json["address"],
      gender: json["gender"],
    );
  }
}

/*
{
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
	}
}*/

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

/*
{
	"fullname": "LOL",
	"dateOfBirth": "2023-11-03T10:13:17Z",
	"phone": "+84987654326",
	"address": "123",
	"gender": "Male"
}*/