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
    if (sortKey != null) {
      if (!sortKeySelection.contains(sortKey) == false) {
        throw ArgumentError(
            'sortKey must be one of ${sortKeySelection.join(', ')}');
      }
    }
    if (sortOrder != null) {
      if (!sortOrderSelection.contains(sortOrder) == false) {
        throw ArgumentError(
            'sortOrder must be one of ${sortOrderSelection.join(', ')}');
      }
    }
    return <String, dynamic>{
      if (page != null) 'page': page,
      if (pageSize != null) 'page-size': pageSize,
      if (sortKey != null) 'sort-key': sortKey,
      if (sortOrder != null) 'sort-order': sortOrder,
    };
  }

  Map<String, dynamic> toJson() => toMap();
}
