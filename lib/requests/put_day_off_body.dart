class PutDayOffBody {
  final DateTime? day;
  final String? reason;
  final String serviceId;

  PutDayOffBody({
    required this.day,
    required this.reason,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      if (day != null) 'day': day?.toUtc().toIso8601String(),
      if (reason != null) 'reason': reason,
      'serviceId': serviceId,
    };
  }

  Map<String, dynamic> toJson() => toMap();
}
