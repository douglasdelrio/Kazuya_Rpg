class User {
  final String username;
  final String password;
  final String email;

  User({
    required this.username,
    required this.password,
    required this.email,
  });

  Map<String, dynamic> toJson() => {
        'username': username,
        'password': password,
        'email': email,
      };

  static User fromJson(Map<String, dynamic> json) => User(
        username: json['username'],
        password: json['password'],
        email: json['email'],
      );
}


