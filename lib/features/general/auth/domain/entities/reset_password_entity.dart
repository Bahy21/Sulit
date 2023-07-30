class ResetPasswordEntity{
  String? code;
  String?email;
  String? password;
  String? confirmPassword;

  ResetPasswordEntity({this.code,this.confirmPassword,this.password, this.email});

  Map<String, dynamic> toJson() => {
    "email": email,
    "password": password,
    "password_confirmation":confirmPassword,
    "code":code,
  };
}