import 'get_param.dart';

class GetTaskParam extends GetParam {
  GetTaskParam({
    required super.page,
    required super.pageSize,
    required super.sortKey,
    required super.sortOrder,
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
    };
  }

  @override
  Map<String, dynamic> toJson() => toMap();
}
