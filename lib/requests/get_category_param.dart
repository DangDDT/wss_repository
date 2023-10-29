import 'get_param.dart';

class GetCategoryParam extends GetParam {
  final String? name;
  GetCategoryParam({
    required this.name,
    required super.page,
    required super.pageSize,
    required super.sortKey,
    required super.sortOrder,
  });

  @override
  List<String> get sortKeySelection => [
        'Id',
        'Name',
        'Description',
        'CreateDate',
      ];

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      if (name != null) 'name': name,
      ...super.toMap(),
    };
  }

  @override
  Map<String, dynamic> toJson() => toMap();
}
