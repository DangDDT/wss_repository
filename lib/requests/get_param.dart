// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class GetParam {
  final int? page;
  final int? pageSize;
  final String? sortKey;
  final String? sortOrder;
  GetParam({
    required this.page,
    required this.pageSize,
    required this.sortKey,
    required this.sortOrder,
  });

  List<String> get sortKeySelection => [];
  List<String> get sortOrderSelection => ['ASC', 'DESC'];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      if (page != null) 'page': page,
      if (pageSize != null) 'page-size': pageSize,
      if (sortKey != null) 'sort-key': sortKey,
      if (sortOrder != null) 'sort-order': sortOrder,
    };
  }

  Map<String, dynamic> toJson() => toMap();
}
