import 'get_param.dart';

///List of status:
///- Active: Đang hoạt động
///- InActive: Ngừng hoạt động
class GetComboParam extends GetParam {
  final String? name;
  final String? status;

  GetComboParam({
    required this.name,
    required this.status,
    required super.page,
    required super.pageSize,
    required super.sortKey,
    required super.sortOrder,
  });

  @override
  List<String> get sortKeySelection => [
        'Id',
        'Name',
        'CreateDate',
      ];

  List<String> get statusSelection => [
        'Active',
        'InActive',
      ];

  @override
  Map<String, dynamic> toMap() {
    if (status != null) {
      if (!statusSelection.contains(status) == false) {
        throw ArgumentError(
            'status must be one of ${statusSelection.join(', ')}');
      }
    }
    return <String, dynamic>{
      if (name != null) 'name': name,
      if (status != null) 'status': status,
      ...super.toMap(),
    };
  }

  @override
  Map<String, dynamic> toJson() => toMap();
}
