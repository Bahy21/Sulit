class LoginEntity {
  String? email;
  String? password;

  LoginEntity({this.password, this.email});

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
