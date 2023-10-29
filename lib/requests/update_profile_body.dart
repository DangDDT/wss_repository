// ignore_for_file: public_member_api_docs, sort_constructors_first

class UpdateProfileBody {
  final String? password;
  final String? fullname;
  final String? dateOfBirth;
  final String? phone;
  final String? address;
  final String? gender;
  final String? imageUrl;

  UpdateProfileBody({
    required this.password,
    required this.fullname,
    required this.dateOfBirth,
    required this.phone,
    required this.address,
    required this.gender,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      if (password != null) 'password': password,
      if (fullname != null) 'fullname': fullname,
      if (dateOfBirth != null) 'dateOfBirth': dateOfBirth,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
      if (gender != null) 'gender': gender,
      if (imageUrl != null) 'imageUrl': imageUrl,
    };
  }

  Map<String, dynamic> toJson() => toMap();
}
