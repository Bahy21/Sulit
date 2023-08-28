class UpdateCartItemParams {
  String? macAddress;
  int id ;
  int qty;

  UpdateCartItemParams({
    required this.macAddress,
    required this.qty,
    required this.id
  });

  Map<String, dynamic> toJson() => {
        'mac_address': macAddress,
        'quantity': qty,
      };
  String toQuery ()=> 'cart/$id/update';
}
