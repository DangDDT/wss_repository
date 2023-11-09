// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_field

/// List of status selection
/// - EXPECTED or Expected: Dự kiến
/// - TO_DO or ToDo: Mới giao
/// - IN_PROGRESS or InProgress: Đang thực hiện
/// - DONE or Done: Hoàn thành
class PutTaskBody {
  final String? status;
  final String? imageEvidence;
  PutTaskBody({
    required this.status,
    required this.imageEvidence,
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
    return <String, dynamic>{
      if (status != null) 'status': status,
      if (imageEvidence != null) 'imageEvidence': imageEvidence,
    };
  }

  Map<String, dynamic> toJson() => toMap();
}
