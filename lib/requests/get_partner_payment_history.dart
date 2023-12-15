import 'package:wss_repository/requests/get_param.dart';

class GetPartnerPaymentHistoryParam extends GetParam {
  final DateTime? fromDate;
  final DateTime? toDate;
  final List<String>? status;
  GetPartnerPaymentHistoryParam({
    required this.fromDate,
    required this.toDate,
    required this.status,
    required super.page,
    required super.pageSize,
    required super.sortKey,
    required super.sortOrder,
  });

  @override
  List<String> get sortKeySelection =>
      ['Id', 'Code', 'OrderId', 'PartnerId', 'Status', 'Total', 'CreateDate'];

  @override
  List<String> get sortOrderSelection => ['ASC', 'DESC'];

  @override
  Map<String, dynamic> toMap() {
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
