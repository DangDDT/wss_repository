// ignore_for_file: public_member_api_docs, sort_constructors_first

class DayOff {
  final String? id;
  final String? code;
  final String? partnerId;
  final DateTime? day;
  final String? reason;
  final String? status;

  DayOff({
    this.id,
    this.code,
    this.partnerId,
    this.day,
    this.reason,
    this.status,
  });

  factory DayOff.fromMap(Map<String, dynamic> map) {
    return DayOff(
      id: map['id'] != null ? map['id'] as String : null,
      code: map['code'] != null ? map['code'] as String : null,
      partnerId: map['partnerId'] != null ? map['partnerId'] as String : null,
      day: map['day'] != null ? DateTime.parse(map['day']) : null,
      reason: map['reason'] != null ? map['reason'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
    );
  }
}
