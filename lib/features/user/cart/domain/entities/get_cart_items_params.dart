class GetCartItemsParams {
  String macAddress ;
  bool refresh ;
  GetCartItemsParams({required this.macAddress, required this.refresh });

  String toQuery ()=> 'cart?mac_address=$macAddress';
}