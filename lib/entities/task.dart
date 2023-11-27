// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: library_private_types_in_public_api

class Task {
  Task({
    required this.id,
    required this.code,
    required this.staff,
    required this.partner,
    required this.orderDetail,
    required this.taskName,
    required this.startDate,
    required this.endDate,
    required this.imageEvidence,
    required this.status,
    required this.createBy,
    required this.comments,
    required this.createDate,
    required this.category,
  });

  final String? id;
  final String? code;
  final dynamic staff;
  final _Partner? partner;
  final _OrderDetail? orderDetail;
  final String? taskName;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? imageEvidence;
  final String? status;
  final _CreateBy? createBy;
  final DateTime? createDate;
  final List<_Comment>? comments;
  final _Category? category;

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      id: json["id"],
      code: json["code"],
      staff: json["staff"],
      partner:
          json["partner"] == null ? null : _Partner.fromJson(json["partner"]),
      orderDetail: json["orderDetail"] == null
          ? null
          : _OrderDetail.fromJson(json["orderDetail"]),
      taskName: json["taskName"],
      startDate: DateTime.tryParse(json["startDate"] ?? ""),
      endDate: DateTime.tryParse(json["endDate"] ?? ""),
      imageEvidence: json["imageEvidence"],
      status: json["status"],
      createBy: json["createBy"] == null
          ? null
          : _CreateBy.fromJson(json["createBy"]),
      comments: json["comments"] == null
          ? []
          : List<_Comment>.from(
              json["comments"]!.map((x) => _Comment.fromJson(x))),
      createDate: DateTime.tryParse(json["createDate"] ?? ""),
      category: json["category"] == null
          ? null
          : _Category.fromJson(json["category"]),
    );
  }

  Task copyWithCategory({
    required dynamic id,
    required String categoryCode,
    required String name,
    required String description,
    required double? commissionRate,
  }) {
    return Task(
      id: id ?? id,
      code: code ?? code,
      staff: staff ?? staff,
      partner: partner ?? partner,
      orderDetail: orderDetail ?? orderDetail,
      taskName: taskName ?? taskName,
      startDate: startDate ?? startDate,
      endDate: endDate ?? endDate,
      imageEvidence: imageEvidence ?? imageEvidence,
      status: status ?? status,
      createBy: createBy ?? createBy,
      createDate: createDate ?? createDate,
      comments: comments ?? comments,
      category: _Category(
        id: id,
        code: categoryCode,
        name: name,
        description: description,
        commissionRate: commissionRate,
      ),
    );
  }
}

class _Category {
  final dynamic id;
  final String code;
  final String name;
  final String description;

  /// Commission rate of this service, which is used to calculate the commission
  final double? commissionRate;
  const _Category({
    required this.id,
    required this.code,
    required this.name,
    required this.description,
    required this.commissionRate,
  });

  factory _Category.fromJson(Map<String, dynamic> json) {
    return _Category(
      id: json["id"],
      code: json["code"],
      name: json["name"],
      description: json["description"],
      commissionRate: json["commissionRate"] == null
          ? null
          : double.tryParse(json["commissionRate"].toString()),
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
    required this.fullname,
    required this.phone,
  });

  final String? id;
  final String? orderId;
  final String? serviceId;
  final String? fullname;
  final String? phone;
  final String? address;
  final String? partnerId;
  final DateTime? startTime;
  final DateTime? endTime;
  final num? price;
  final num? total;
  final String? description;
  final String? status;
  final _Order? order;
  final _Service? service;

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
      fullname: json["fullname"],
      phone: json["phone"],
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
  final _Customer? customer;
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
      customer: json['customer'] != null
          ? _Customer.fromJson(json['customer'])
          : null,
      voucher: json["voucher"],
      weddingInformation: json["weddingInformation"],
    );
  }
}

class _Customer {
  _Customer({
    required this.fullname,
    required this.dateOfBirth,
    required this.phone,
    required this.address,
    required this.imageUrl,
    required this.categoryId,
    required this.gender,
    required this.idNavigation,
  });

  final String? fullname;
  final DateTime? dateOfBirth;
  final String? phone;
  final String? address;
  final String? imageUrl;
  final dynamic categoryId;
  final String? gender;
  final _IdNavigation? idNavigation;

  factory _Customer.fromJson(Map<String, dynamic> json) {
    return _Customer(
      fullname: json["fullname"],
      dateOfBirth: DateTime.tryParse(json["dateOfBirth"] ?? ""),
      phone: json["phone"],
      address: json["address"],
      imageUrl: json["imageUrl"],
      categoryId: json["categoryId"],
      gender: json["gender"],
      idNavigation: json['idNavigation'] != null
          ? _IdNavigation.fromJson(json['idNavigation'])
          : null,
    );
  }
}

class _IdNavigation {
  _IdNavigation({
    required this.id,
    required this.code,
    required this.username,
    required this.status,
    required this.roleName,
    required this.refId,
  });

  final String? id;
  final String? code;
  final String? username;
  final String? status;
  final String? roleName;
  final String? refId;

  factory _IdNavigation.fromJson(Map<String, dynamic> json) {
    return _IdNavigation(
      id: json["id"],
      code: json["code"],
      username: json["username"],
      status: json["status"],
      roleName: json["roleName"],
      refId: json["refId"],
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
    required this.totalRevenue,
    required this.rating,
    required this.createDate,
    required this.updateDate,
  });

  final String? id;
  final String? code;
  final String? name;
  final dynamic coverUrl;
  final num? quantity;
  final List<_ServiceImage>? serviceImages;
  final String? categoryId;
  final String? unit;
  final String? description;
  final String? status;
  final num? used;
  final num? totalRevenue;
  final num? rating;
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
          : List<_ServiceImage>.from(
              json["serviceImages"]!.map((x) => _ServiceImage.fromJson(x))),
      categoryId: json["categoryId"],
      unit: json["unit"],
      description: json["description"],
      status: json["status"],
      used: json["used"],
      totalRevenue: json["totalRevenue"],
      rating: json["rating"],
      createDate: DateTime.tryParse(json["createDate"] ?? ""),
      updateDate: DateTime.tryParse(json["updateDate"] ?? ""),
    );
  }
}

class _ServiceImage {
  _ServiceImage({
    required this.imageUrl,
  });

  final String? imageUrl;

  factory _ServiceImage.fromJson(Map<String, dynamic> json) {
    return _ServiceImage(
      imageUrl: json["imageUrl"],
    );
  }
}
