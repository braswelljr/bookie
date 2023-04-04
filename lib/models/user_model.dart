class UserModel {
  final String id;
  String firstname;
  String lastname;
  String othernames;
  String username;
  String email;
  DateTime dateOfBirth;
  String phone;
  String address;
  String city;
  String country;
  String role;
  DateTime createdAt;
  DateTime updatedAt;

  UserModel({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.othernames,
    required this.username,
    required this.email,
    required this.dateOfBirth,
    required this.phone,
    required this.address,
    required this.city,
    required this.country,
    required this.role,
    required this.createdAt,
    required this.updatedAt,
  });

  // Convert a UserModel object into a Map object
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstname': firstname,
      'lastname': lastname,
      'othernames': othernames,
      'username': username,
      'email': email,
      'dateOfBirth': dateOfBirth,
      'phone': phone,
      'address': address,
      'city': city,
      'country': country,
      'role': role,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  // Convert a Map object into a UserModel object
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      firstname: map['firstname'],
      lastname: map['lastname'],
      othernames: map['othernames'],
      username: map['username'],
      email: map['email'],
      dateOfBirth: map['dateOfBirth'],
      phone: map['phone'],
      address: map['address'],
      city: map['city'],
      country: map['country'],
      role: map['role'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
    );
  }

  // Convert a Map object into a UserModel object
  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      firstname: map['firstname'],
      lastname: map['lastname'],
      othernames: map['othernames'],
      username: map['username'],
      email: map['email'],
      dateOfBirth: map['dateOfBirth'],
      phone: map['phone'],
      address: map['address'],
      city: map['city'],
      country: map['country'],
      role: map['role'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
    );
  }

  // Convert a UserModel object into a Map object
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstname': firstname,
      'lastname': lastname,
      'othernames': othernames,
      'username': username,
      'email': email,
      'dateOfBirth': dateOfBirth,
      'phone': phone,
      'address': address,
      'city': city,
      'country': country,
      'role': role,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}
