// ignore_for_file: library_private_types_in_public_api

class Task {
  Task({
    required this.id,
    required this.code,
    required this.staff,
    required this.partner,
    required this.orderDetails,
    required this.taskName,
    required this.startDate,
    required this.endDate,
    required this.imageEvidence,
    required this.status,
    required this.createBy,
    required this.comments,
  });

  final String? id;
  final String? code;
  final dynamic staff;
  final _Partner? partner;
  final List<_OrderDetail> orderDetails;
  final String? taskName;
  final dynamic startDate;
  final dynamic endDate;
  final String? imageEvidence;
  final String? status;
  final _CreateBy? createBy;
  final List<_Comment> comments;

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json["id"],
      code: json["code"],
      staff: json["staff"],
      partner:
          json["partner"] == null ? null : _Partner.fromJson(json["partner"]),
      orderDetails: json["orderDetails"] == null
          ? []
          : List<_OrderDetail>.from(
              json["orderDetails"]!.map((x) => _OrderDetail.fromJson(x))),
      taskName: json["taskName"],
      startDate: json["startDate"],
      endDate: json["endDate"],
      imageEvidence: json["imageEvidence"],
      status: json["status"],
      createBy: json["createBy"] == null
          ? null
          : _CreateBy.fromJson(json["createBy"]),
      comments: json["comments"] == null
          ? []
          : List<_Comment>.from(
              json["comments"]!.map((x) => _Comment.fromJson(x))),
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

  factory _CreateBy.fromJson(Map<String, dynamic> json) {
    return _CreateBy(
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
    required this.order,
    required this.service,
    required this.feedbacks,
    required this.tasks,
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
  final _Order? order;
  final _Service? service;
  final List<dynamic> feedbacks;
  final List<dynamic> tasks;

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
      order: json["order"] == null ? null : _Order.fromJson(json["order"]),
      service:
          json["service"] == null ? null : _Service.fromJson(json["service"]),
      feedbacks: json["feedbacks"] == null
          ? []
          : List<dynamic>.from(json["feedbacks"]!.map((x) => x)),
      tasks: json["tasks"] == null
          ? []
          : List<dynamic>.from(json["tasks"]!.map((x) => x)),
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
  });

  final String? code;
  final String? id;
  final String? customerId;
  final String? weddingInformationId;
  final String? fullname;
  final String? address;
  final String? phone;
  final dynamic voucherId;
  final String? comboId;
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

  factory _Order.fromJson(Map<String, dynamic> json) {
    return _Order(
      code: json["code"],
      id: json["id"],
      customerId: json["customerId"],
      weddingInformationId: json["weddingInformationId"],
      fullname: json["fullname"],
      address: json["address"],
      phone: json["phone"],
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
    required this.category,
    required this.currentPrices,
    required this.serviceImages,
    required this.categoryId,
    required this.unit,
    required this.description,
    required this.status,
    required this.used,
    required this.totalRevenue,
    required this.rating,
    required this.reason,
    required this.createDate,
    required this.updateDate,
    required this.createByNavigation,
  });

  final String? id;
  final String? code;
  final String? name;
  final dynamic coverUrl;
  final num? quantity;
  final dynamic category;
  final dynamic currentPrices;
  final List<dynamic> serviceImages;
  final String? categoryId;
  final String? unit;
  final String? description;
  final String? status;
  final num? used;
  final num? totalRevenue;
  final num? rating;
  final dynamic reason;
  final DateTime? createDate;
  final DateTime? updateDate;
  final dynamic createByNavigation;

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
      categoryId: json["categoryId"],
      unit: json["unit"],
      description: json["description"],
      status: json["status"],
      used: json["used"],
      totalRevenue: json["totalRevenue"],
      rating: json["rating"],
      reason: json["reason"],
      createDate: DateTime.tryParse(json["createDate"] ?? ""),
      updateDate: DateTime.tryParse(json["updateDate"] ?? ""),
      createByNavigation: json["createByNavigation"],
    );
  }
}
