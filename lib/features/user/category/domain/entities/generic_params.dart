class GenericParams {
  int id;
  bool refresh;

  GenericParams({
    required this.id,
    this.refresh = true,
  });

  String paramToQuery() => "/$id";
}
