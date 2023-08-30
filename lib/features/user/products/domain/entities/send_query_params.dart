class SendQueryParams {
  final int id;
  final String question;

  SendQueryParams({
    required this.id,
    required this.question,
  });

  String paramToQuery() => "/$id/send";

  Map<String, dynamic> toJson() => {"question": question};
}
