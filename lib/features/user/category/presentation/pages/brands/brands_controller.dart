part of'brands_imports.dart';
class BrandsController {
  final PagingController<int, BrandDomainModel> pagingController = PagingController(firstPageKey: 1);
  int pageSize = 10;

  BrandsController() {
    pagingController.addPageRequestListener(
      (pageKey) {
        getBrands(pageKey);
      },
    );
  }

  Future<void> getBrands(int page ,{bool refresh = true}) async {
    var params = _brandsParams(pageSize,refresh,page );
    var data = await GetBrands().call(params);
    final isLastPage = data.length < pageSize;
    if (page == 1) {
      pagingController.itemList = [];
    }
    if (isLastPage) {
      pagingController.appendLastPage(data);
    } else {
      final nextPageKey = page + 1;
      pagingController.appendPage(data, nextPageKey);
    }
  }

  BrandsParams _brandsParams(int paginate, bool refresh, int page ) {
    return BrandsParams(
      paginate: paginate,
      refresh: refresh,
      page: page,
    );
  }
}