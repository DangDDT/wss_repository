// ignore_for_file: public_member_api_docs, sort_constructors_first

/// List of status selection
/// - EXPECTED or Expected: Dự kiến
/// - TO_DO or ToDo: Mới giao
/// - IN_PROGRESS or InProgress: Đang thực hiện
/// - DONE or Done: Hoàn thành
class PutTaskBody {
  final String status;
  PutTaskBody({
    required this.status,
  });

  final List<String> _listStatusSelection = [
    'Expected',
    'EXPECTED',
    'ToDo',
    'TO_DO',
    'InProgress',
    'IN_PROGRESS',
    'Done',
    'DONE',
  ];

  Map<String, dynamic> toMap() {
    if (!_listStatusSelection.contains(status)) {
      throw Exception('You must choose status in $_listStatusSelection');
    }
    return <String, dynamic>{
      'status': status,
    };
  }

  Map<String, dynamic> toJson() => toMap();
}
