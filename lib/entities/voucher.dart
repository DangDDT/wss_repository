class Voucher {
  Voucher({
    required this.id,
    required this.name,
    required this.discountValueVoucher,
    required this.minAmount,
    required this.endTime,
    required this.startTime,
    required this.createBy,
  });

  final String? id;
  final String? name;
  final num? discountValueVoucher;
  final num? minAmount;
  final DateTime? endTime;
  final DateTime? startTime;
  final _CreateBy? createBy;

  factory Voucher.fromJson(Map<String, dynamic> json) {
    return Voucher(
      id: json["id"],
      name: json["name"],
      discountValueVoucher: json["discountValueVoucher"],
      minAmount: json["minAmount"],
      endTime: DateTime.tryParse(json["endTime"] ?? "")?.toLocal(),
      startTime: DateTime.tryParse(json["startTime"] ?? "")?.toLocal(),
      createBy: json["createBy"] == null
          ? null
          : _CreateBy.fromJson(json["createBy"]),
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
    required this.gender,
  });

  final String? fullname;
  final DateTime? dateOfBirth;
  final String? phone;
  final String? address;
  final String? imageUrl;
  final String? gender;

  factory _CreateBy.fromJson(Map<String, dynamic> json) {
    return _CreateBy(
      fullname: json["fullname"],
      dateOfBirth: DateTime.tryParse(json["dateOfBirth"] ?? "")?.toLocal(),
      phone: json["phone"],
      address: json["address"],
      imageUrl: json["imageUrl"],
      gender: json["gender"],
    );
  }
}

/*
{
	"id": "867e1b59-af09-4596-a972-fd6d8d143bb3",
	"name": "Tháng vàng",
	"discountValueVoucher": 100000,
	"minAmount": 1111,
	"endTime": "2023-10-29T17:00:00Z",
	"startTime": "2023-10-16T17:00:00Z",
	"createBy": {
		"fullname": "Owner",
		"dateOfBirth": "2023-11-03T00:06:15Z",
		"phone": "+84369222315",
		"address": "13phường 13, quận 5, TPHCM",
		"imageUrl": "https://images.unsplash.com/photo-1575936123452-b67c3203c357?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
		"gender": "Male"
	}
}*/