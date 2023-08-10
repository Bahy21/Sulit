class PopularProductsParams {
  final int? id;
  final int currentPage;
  final int pageSize;
  final bool refresh;

  PopularProductsParams({
    this.id,
    this.currentPage = 1,
    this.pageSize = 12,
    required this.refresh,
  });

  String paramToQuery() => "/$id?paginate=$pageSize&page=$currentPage";
}
