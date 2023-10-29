import 'get_param.dart';

class GetFeedbackParam extends GetParam {
  GetFeedbackParam({
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

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      ...super.toMap(),
    };
  }

  @override
  Map<String, dynamic> toJson() => toMap();
}
