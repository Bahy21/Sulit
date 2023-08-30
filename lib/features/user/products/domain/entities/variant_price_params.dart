class VariantPriceParams {
  final int id;
  final int? resellerId;
  final String variants;

  VariantPriceParams({
    required this.id,
    this.resellerId,
    required this.variants,
  });

  String paramToQuery() => "/$id/variant/price";

  Map<String, dynamic> toJson() => {
        "variants": variants,
        "reseller_id": resellerId,
      };
}
