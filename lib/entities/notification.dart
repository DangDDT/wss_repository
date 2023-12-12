class Notification {
  Notification({
    required this.id,
    required this.content,
    required this.title,
    required this.userId,
    required this.createdAt,
    required this.isRead,
  });

  final String? id;
  final String? content;
  final String? title;
  final String? userId;
  final DateTime? createdAt;
  final String? isRead;

  factory Notification.fromJson(Map<String, dynamic> json) {
    return Notification(
      id: json["id"],
      content: json["content"],
      title: json["title"],
      userId: json["userId"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      isRead: json["isRead"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "content": content,
        "title": title,
        "userId": userId,
        "createdAt": createdAt?.toIso8601String(),
        "isRead": isRead,
      };
}

/*
{
	"id": "931d1350-67d9-4621-8c8b-8f746837c299",
	"content": "Đơn hàng P0000056 đã bị hủy.",
	"title": "Thông báo hủy đơn hàng.",
	"userId": "43cce28f-3759-4b4d-a865-d0c08295f05f",
	"createdAt": "2023-12-12T20:11:12.8589672+07:00",
	"isRead": "Read"
}*/