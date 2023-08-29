class AddProductToCartParams {
  int? variantId;

  int quantity;

  String? macAddress;

  AddProductToCartParams({
    required this.variantId,
    required this.quantity,
    this.macAddress,
  });

  Map<String, dynamic> toJson ()=> {
    'variant_id': variantId,
    'quantity': quantity,
    'mac_address': macAddress,
  };
}
