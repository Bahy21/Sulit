class SubCategoryParams {
  int? id;
  bool refresh;

  SubCategoryParams({
    this.id,
    this.refresh = true,
  });

  String paramToQuery() => "/$id";
}
