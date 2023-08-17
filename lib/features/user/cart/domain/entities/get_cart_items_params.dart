class GetCartItemsParams {
  String macAddress ;
  bool refresh ;
  GetCartItemsParams({required this.macAddress, required this.refresh });

  Map<String, dynamic> toJson ()=> {"mac_address": macAddress};
}