import 'dart:io';

class ProfileParams {
  String name;


  String phone;

  File? image;

  ProfileParams({
    required this.name,
    required this.phone,
    required this.image,
  });

  Map<String, dynamic> toJson ()=> {
    "name":name,
    "phone": phone,
    "image": image,
  };
}
