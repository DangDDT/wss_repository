import 'get_param.dart';

class GetTaskParam extends GetParam {
  final String? taskName;
  final DateTime? dueDateFrom;
  final DateTime? dueDateTo;
  final List<String>? status;

  GetTaskParam({
    required super.page,
    required super.pageSize,
    required super.sortKey,
    required super.sortOrder,
    required this.taskName,
    required this.dueDateFrom,
    required this.dueDateTo,
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
      if (dueDateFrom != null) 'dueDateFrom': dueDateFrom?.toIso8601String(),
      if (dueDateTo != null) 'dueDateTo': dueDateTo?.toIso8601String(),
      if (status != null) 'status': status,
    };
  }

  @override
  Map<String, dynamic> toJson() => toMap();
}
