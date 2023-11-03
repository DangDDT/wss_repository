// ignore_for_file: public_member_api_docs, sort_constructors_first
class PostCommentBody {
  final String? taskId;
  final String? content;
  PostCommentBody({
    required this.taskId,
    required this.content,
  });

  Map<String, dynamic> toJson() => {
        if (taskId != null) 'taskId': taskId,
        if (content != null) 'content': content,
      };
}
