///[PatchReadNotificationParam] is a class that contains the required parameters for the [patchReadNotification] function.
///[status] is a required parameter for the [patchReadNotification] function.
///- Read: Read notification
///- UnRead: Unread notification
class PatchReadNotificationParam {
  final String? status;

  PatchReadNotificationParam({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      if (status != null) 'status': status,
    };
  }

  Map<String, dynamic> toJson() => toMap();
}
