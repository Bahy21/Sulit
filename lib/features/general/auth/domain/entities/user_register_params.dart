class UserRegisterParams {
  String name;

  String email;

  String password;

  String passwordConfirmation;

  UserRegisterParams({
    required this.name,
    required this.email,
    required this.password,
    required this.passwordConfirmation,
  });
  Map <String, dynamic> toJson ()=> {
    "name":name,
    "email" : email,
    "password":password,
    "password_confirmation" :password
  };
}
