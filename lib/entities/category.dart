// ignore_for_file: public_member_api_docs, sort_constructors_first

///List of status
/// - Active: Đang hoạt động
/// - Inactive: Dừng hoạt động
class Category {
  final String? id;
  final String? name;
  final String? imageUrl;
  final String? description;
  final String? status;
  final bool? isOrderLimit;
  final Commission? commission;

  Category({
    this.id,
    this.name,
    this.imageUrl,
    this.description,
    this.status,
    this.isOrderLimit,
    this.commission,
  });

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
      isOrderLimit:
          map['isOrderLimit'] != null ? map['isOrderLimit'] as bool : null,
      commission: map['commission'] != null
          ? Commission.fromMap(map['commission'] as Map<String, dynamic>)
          : null,
    );
  }
}

class Commission {
  final String? id;
  final DateTime? dateOfApply;
  final double? commisionValue;

  Commission({
    this.id,
    this.dateOfApply,
    this.commisionValue,
  });

  factory Commission.fromMap(Map<String, dynamic> map) {
    return Commission(
      id: map['id'] != null ? map['id'] as String : null,
      dateOfApply: map['dateOfApply'] != null
          ? DateTime.parse(map['dateOfApply'])
          : null,
      commisionValue: map['commisionValue'] != null
          ? map['commisionValue'] as double
          : null,
    );
  }
}
