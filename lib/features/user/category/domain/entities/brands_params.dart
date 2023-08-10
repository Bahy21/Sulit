class BrandsParams {
  int paginate;

  int page;

  bool refresh = true;

  BrandsParams({
    required this.paginate,
    required this.refresh,
    required this.page,
  });

  String toQuery() => "?paginate=$paginate&page=$page";
}