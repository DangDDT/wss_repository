import 'get_param.dart';

///List of status:
///- Active: Đang hoạt động
///- InActive: Ngừng hoạt động
///- Deleted: Đã bị xoá
///- Pending: Đang chờ duyệt
///- Rejected: Bị từ chối
class GetServiceParam extends GetParam {
  final List<String>? status;
  final DateTime? checkDate;
  final double? priceFrom;
  final double? priceTo;
  GetServiceParam({
    required this.status,
    required this.checkDate,
    required this.priceFrom,
    required this.priceTo,
    required super.page,
    required super.pageSize,
    required super.sortKey,
    required super.sortOrder,
  });

  @override
  List<String> get sortKeySelection => [
        'Id',
        'Name',
        'Quantity',
        'Status',
        'CreateDate',
      ];

  List<String> get statusSelection => [
        'Active',
        'InActive',
        'Deleted',
        'Pending',
        'Rejected',
      ];
}
