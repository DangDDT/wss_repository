// ignore_for_file: public_member_api_docs, sort_constructors_first
class GetFeedbackGroupByRatingParam {
  final String? serviceId;

  GetFeedbackGroupByRatingParam({
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      if (serviceId != null) 'serviceId': serviceId,
    };
  }

  Map<String, dynamic> toJson() => toMap();
}
