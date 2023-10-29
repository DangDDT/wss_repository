class ServiceImages {
  final String? imageUrl;

  ServiceImages({
    this.imageUrl,
  });

  factory ServiceImages.fromMap(Map<String, dynamic> map) {
    return ServiceImages(
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : null,
    );
  }
}
