// ignore_for_file: public_member_api_docs, sort_constructors_first

class PutServiceBody {
  final String? name;
  final int? quantity;
  final List<String>? imageUrls;
  final String? categoryid;
  final String? unit;
  final int? price;
  final String? description;

  PutServiceBody({
    required this.name,
    required this.quantity,
    required this.imageUrls,
    required this.categoryid,
    required this.unit,
    required this.price,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      if (name != null) 'name': name,
      if (quantity != null) 'quantity': quantity,
      if (imageUrls != null) 'imageUrls': imageUrls,
      if (categoryid != null) 'categoryid': categoryid,
      if (unit != null) 'unit': unit,
      if (price != null) 'price': price,
      if (description != null) 'description': description,
    };
  }

  Map<String, dynamic> toJson() => toMap();
}
