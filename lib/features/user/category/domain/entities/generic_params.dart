class GenericParams {
  int? id;
  bool refresh;

  GenericParams({
    this.id,
    this.refresh = true,
  });

  String paramToQuery() => "/$id";
}
