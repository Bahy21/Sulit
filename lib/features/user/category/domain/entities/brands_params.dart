class BrandsParams {
 int currentPage ;
 bool refresh = true ;
 BrandsParams({required this.currentPage,required this.refresh});

 String toQuery ()=> "?paginate=$currentPage" ;
}