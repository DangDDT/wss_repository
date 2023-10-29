class PutServiceStatusBody {
  final String? reason;

  PutServiceStatusBody({
    required this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      if (reason != null) 'reason': reason,
    };
  }

  Map<String, dynamic> toJson() => toMap();
}
