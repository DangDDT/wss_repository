import 'package:wss_repository/requests/get_param.dart';

class GetPartnerPaymentHistoryParam extends GetParam {
  GetPartnerPaymentHistoryParam({
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
      ...super.toMap(),
    };
  }

  @override
  Map<String, dynamic> toJson() => toMap();
}
