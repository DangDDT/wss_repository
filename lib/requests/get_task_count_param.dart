class GetStatisticTaskCountParam {
  final DateTime? fromDate;
  final DateTime? toDate;

  GetStatisticTaskCountParam({
    required this.fromDate,
    required this.toDate,
  });

  Map<String, dynamic> toMap() {
    return {
      if (fromDate != null) 'fromDate': fromDate?.toIso8601String(),
      if (toDate != null) 'toDate': toDate?.toIso8601String(),
    };
  }

  Map<String, dynamic> toJson() => toMap();
}
