// ignore_for_file: public_member_api_docs, sort_constructors_first

class Task {
  final String? id;
  final String? code;
  final Partner? partner;
  final Service? service;
  final OrderDetail? orderDetail;
  final String? taskName;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? status;
  final List<Comment>? comments;

  Task({
    this.id,
    this.code,
    this.partner,
    this.service,
    this.orderDetail,
    this.taskName,
    this.startDate,
    this.endDate,
    this.status,
    this.comments,
  });

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'] != null ? map['id'] as String : null,
      code: map['code'] != null ? map['code'] as String : null,
      partner: map['partner'] != null
          ? Partner.fromMap(map['partner'] as Map<String, dynamic>)
          : null,
      service: map['service'] != null
          ? Service.fromMap(map['service'] as Map<String, dynamic>)
          : null,
      orderDetail: map['orderDetail'] != null
          ? OrderDetail.fromMap(map['orderDetail'] as Map<String, dynamic>)
          : null,
      taskName: map['taskName'] != null ? map['taskName'] as String : null,
      startDate: map['startDate'] != null
          ? DateTime.parse(map['startDate'] as String)
          : null,
      endDate: map['endDate'] != null
          ? DateTime.parse(map['endDate'] as String)
          : null,
      status: map['status'] != null ? map['status'] as String : null,
      comments: map['comments'] != null
          ? (map['comments'] as List)
              .map((e) => Comment.fromMap(e as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
}

class Comment {
  final String? id;
  final String? taskId;
  final String? content;
  final DateTime? createDate;
  final String? createBy;

  Comment({
    this.id,
    this.taskId,
    this.content,
    this.createDate,
    this.createBy,
  });

  factory Comment.fromMap(Map<String, dynamic> map) {
    return Comment(
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

class OrderDetail {
  final String? id;
  final String? orderId;
  final String? serviceId;
  final String? address;
  final DateTime? startTime;
  final DateTime? endTime;
  final num? price;
  final String? description;
  final String? status;
  final Service? service;

  OrderDetail({
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

  factory OrderDetail.fromMap(Map<String, dynamic> map) {
    return OrderDetail(
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
          ? Service.fromMap(map['service'] as Map<String, dynamic>)
          : null,
    );
  }
}

class Service {
  final String? id;
  final String? code;
  final String? name;
  final int? quantity;
  final List<String>? serviceImages;
  final String? categoryId;
  final String? status;
  final int? used;
  final num? rating;

  Service({
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

  factory Service.fromMap(Map<String, dynamic> map) {
    return Service(
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

class Partner {
  final String? fullname;
  final DateTime? dateOfBirth;
  final String? phone;
  final String? address;
  final String? imageUrl;
  final String? categoryId;
  final String? gender;

  Partner({
    this.fullname,
    this.dateOfBirth,
    this.phone,
    this.address,
    this.imageUrl,
    this.categoryId,
    this.gender,
  });

  factory Partner.fromMap(Map<String, dynamic> map) {
    return Partner(
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
