import 'get_param.dart';

///List of status:
///- Active: Đang hoạt động
///- InActive: Ngừng hoạt động
class GetDayOffParam extends GetParam {
  final DateTime? fromDate;
  final DateTime? toDate;
  final List<String>? status;
  final String? serviceId;

  GetDayOffParam({
    required this.fromDate,
    required this.toDate,
    required this.status,
    required super.page,
    required super.pageSize,
    required super.sortKey,
    required super.sortOrder,
    required this.serviceId,
  });

  @override
  List<String> get sortKeySelection => [
        'Id',
        'Content',
        'Rating',
        'Status',
        'CreateDate',
      ];

  List<String> get statusSelection => [
        'Active',
        'InActive',
      ];

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      if (fromDate != null) 'fromDate': fromDate?.toUtc().toIso8601String(),
      if (toDate != null) 'toDate': toDate?.toUtc().toIso8601String(),
      if (status != null) 'status': status,
      if (serviceId != null) 'serviceId': serviceId,
      ...super.toMap(),
    };
  }

  @override
  Map<String, dynamic> toJson() => toMap();
}
