class PostDayOffBody {
  final DateTime? day;
  final String? reason;

  PostDayOffBody({
    required this.day,
    required this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      if (day != null) 'day': day?.toIso8601String(),
      if (reason != null) 'reason': reason,
    };
  }

  Map<String, dynamic> toJson() => toMap();
}