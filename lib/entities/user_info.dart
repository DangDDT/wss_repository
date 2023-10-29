// ignore_for_file: public_member_api_docs, sort_constructors_first

class UserInfo {
  final String? id;
  final String? username;
  final String? status;
  final String? roleName;
  final User? user;

  UserInfo({
    this.id,
    this.username,
    this.status,
    this.roleName,
    this.user,
  });

  factory UserInfo.fromMap(Map<String, dynamic> map) {
    return UserInfo(
      id: map['id'] != null ? map['id'] as String : null,
      username: map['username'] != null ? map['username'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
      roleName: map['roleName'] != null ? map['roleName'] as String : null,
      user: map['user'] != null
          ? User.fromMap(map['user'] as Map<String, dynamic>)
          : null,
    );
  }
}

class User {
  final String? fullname;
  final DateTime? dateOfBirth;
  final String? phone;
  final String? address;
  final String? imageUrl;
  final String? categoryId;
  final String? gender;

  User({
    this.fullname,
    this.dateOfBirth,
    this.phone,
    this.address,
    this.imageUrl,
    this.categoryId,
    this.gender,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      fullname: map['fullname'] != null ? map['fullname'] as String : null,
      dateOfBirth: map['dateOfBirth'] != null
          ? DateTime.parse(map['dateOfBirth'])
          : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      address: map['address'] != null ? map['address'] as String : null,
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : null,
      categoryId:
          map['categoryId'] != null ? map['categoryId'] as String : null,
      gender: map['gender'] != null ? map['gender'] as String : null,
    );
  }
}
