class TaskCount {
  final String? code;
  final String? name;
  final int? value;

  TaskCount({
    this.code,
    this.name,
    this.value,
  });

  factory TaskCount.fromMap(Map<String, dynamic> json) {
    return TaskCount(
      code: json['code'] != null ? json['code'] as String : null,
      name: json['name'] != null ? json['name'] as String : null,
      value: json['value'] != null ? json['value'] as int : null,
    );
  }
}
