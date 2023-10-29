import 'get_param.dart';

///List of status:
///- Active: Đang hoạt động
///- InActive: Ngừng hoạt động
class GetDayOffParam extends GetParam {
  final DateTime? fromDate;
  final DateTime? toDate;
  final List<String>? status;

  GetDayOffParam({
    required this.fromDate,
    required this.toDate,
    required this.status,
    required super.page,
    required super.pageSize,
    required super.sortKey,
    required super.sortOrder,
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
    if (status != null) {
      for (var item in status!) {
        if (!statusSelection.contains(item) == false) {
          throw ArgumentError(
              'status must be one of ${statusSelection.join(', ')}');
        }
      }
    }
    return <String, dynamic>{
      if (fromDate != null) 'fromDate': fromDate?.toIso8601String(),
      if (toDate != null) 'toDate': toDate?.toIso8601String(),
      if (status != null) 'status': status,
      ...super.toMap(),
    };
  }

  @override
  Map<String, dynamic> toJson() => toMap();
}
