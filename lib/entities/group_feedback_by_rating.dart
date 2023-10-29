// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'feedback.dart';

class FeedbackGroupByRating {
  final List<Feedback>? oneStar;
  final List<Feedback>? twoStar;
  final List<Feedback>? threeStar;
  final List<Feedback>? fourStar;
  final List<Feedback>? fiveStar;

  FeedbackGroupByRating({
    this.oneStar,
    this.twoStar,
    this.threeStar,
    this.fourStar,
    this.fiveStar,
  });

  factory FeedbackGroupByRating.fromMap(Map<String, dynamic> map) {
    return FeedbackGroupByRating(
      oneStar: map['1'] != null
          ? List<Feedback>.from(
              (map['1']).map<Feedback?>(
                (x) => Feedback.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      twoStar: map['2'] != null
          ? List<Feedback>.from(
              (map['2']).map<Feedback?>(
                (x) => Feedback.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      threeStar: map['3'] != null
          ? List<Feedback>.from(
              (map['3']).map<Feedback?>(
                (x) => Feedback.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      fourStar: map['4'] != null
          ? List<Feedback>.from(
              (map['4']).map<Feedback?>(
                (x) => Feedback.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      fiveStar: map['5'] != null
          ? List<Feedback>.from(
              (map['5']).map<Feedback?>(
                (x) => Feedback.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }
}
