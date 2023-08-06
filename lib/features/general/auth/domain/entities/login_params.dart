class LoginParams {
  String? email;
  String? password;

  LoginParams({this.password, this.email});

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
