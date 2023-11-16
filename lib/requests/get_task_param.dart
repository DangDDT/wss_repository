import 'get_param.dart';

class GetTaskParam extends GetParam {
  final String? taskName;
  final DateTime? startDateFrom;
  final DateTime? startDateTo;
  final List<String>? status;

  GetTaskParam({
    required super.page,
    required super.pageSize,
    required super.sortKey,
    required super.sortOrder,
    required this.taskName,
    required this.startDateFrom,
    required this.startDateTo,
    required this.status,
  });

  @override
  List<String> get sortKeySelection => [
        'Id',
        'TaskName',
        'Content',
        'StartDate',
        'EndDate',
        'CreateDate',
      ];

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      ...super.toMap(),
      if (taskName != null) 'taskName': taskName,
      if (startDateFrom != null)
        'startDateFrom': startDateFrom?.toIso8601String(),
      if (startDateTo != null) 'startDateTo': startDateTo?.toIso8601String(),
      if (status != null) 'status': status,
    };
  }

  @override
  Map<String, dynamic> toJson() => toMap();
}
