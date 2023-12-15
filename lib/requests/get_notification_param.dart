import 'package:wss_repository/requests/get_param.dart';

class GetNotificationParam extends GetParam {
  final String? userId;
  final DateTime? dateFrom;
  final DateTime? dateTo;

  GetNotificationParam({
    required super.page,
    required super.pageSize,
    required super.sortKey,
    required super.sortOrder,
    required this.userId,
    required this.dateFrom,
    required this.dateTo,
  });

  @override
  List<String> get sortKeySelection => ['CreateAt'];
  @override
  List<String> get sortOrderSelection => ['ASC', 'DESC'];

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      if (userId != null) 'userId': userId,
      if (dateFrom != null) 'dateFrom': dateFrom?.toUtc().toIso8601String(),
      if (dateTo != null) 'dateTo': dateTo?.toUtc().toIso8601String(),
      ...super.toMap(),
    };
  }

  @override
  Map<String, dynamic> toJson() => toMap();
}
