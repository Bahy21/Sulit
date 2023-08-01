class PopularProductsEntity {
  int? id;
  int currentPage ;
  bool refresh;

  PopularProductsEntity({
    this.id,
    this.currentPage=1,
    required this.refresh,
  });

  String paramToQuery ()=> "/$id?paginate=$currentPage" ;

}
