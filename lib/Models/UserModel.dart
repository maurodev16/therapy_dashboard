class UserModel {
  String? userId;
  String? firstname;
  String? lastname;
  String? email;
  String? password;
  String? token;
  String? userType;
  DateTime? createdAt;
  DateTime? updatedAt;
  UserModel({
    this.userId,
    this.firstname,
    this.lastname,
    this.email,
    this.password,
    this.token,
    this.userType,
    this.createdAt,
    this.updatedAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userId: json['user_id'],
      firstname: json['first_name'],
      lastname: json['last_name'],
      email: json['email'],
      password: json['password'],
      token: json['token'],
      userType: json['user_type'] = 'client',
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'first_name': firstname,
      'last_name:': lastname,
      'email': email,
      'password': password,
      'token': token,
      'user_type': userType,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}
