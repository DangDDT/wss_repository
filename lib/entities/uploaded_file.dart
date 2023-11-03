// ignore_for_file: public_member_api_docs, sort_constructors_first
class UploadedFile {
  final String? filename;
  final String? link;
  final String? size;
  final String? type;
  UploadedFile({
    required this.filename,
    required this.link,
    required this.size,
    required this.type,
  });

  factory UploadedFile.fromJson(Map<String, dynamic> json) => UploadedFile(
        filename: json['filename'],
        link: json['link'],
        size: json['size'],
        type: json['type'],
      );
}
