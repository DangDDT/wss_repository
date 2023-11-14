class PutStatusServiceBody {
  final String? status;

  PutStatusServiceBody({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      if (status != null) 'status': status,
    };
  }

  Map<String, dynamic> toJson() => toMap();
}
