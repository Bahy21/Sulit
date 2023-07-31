part of'brands_imports.dart';
class BrandsController {
  final PagingController<int, BrandDomainModel> pagingController = PagingController(firstPageKey: 1);
  int pageSize = 10;

  BrandsController() {
    pagingController.addPageRequestListener(
      (pageKey) {
        getBrands(pageSize);
      },
    );
  }

  Future<void> getBrands(int currentPage, {bool refresh = true}) async {
    var params = _brandsParams(currentPage, refresh);
    var data = await GetBrands().call(params);
    final isLastPage = data.length < pageSize;
    if (currentPage == 1) {
      pagingController.itemList = [];
    }
    if (isLastPage) {
      pagingController.appendLastPage(data);
    } else {
      final nextPageKey = currentPage + 1;
      pagingController.appendPage(data, nextPageKey);
    }
  }

  BrandsParams _brandsParams(int page, bool refresh) {
    return BrandsParams(
      currentPage: page,
      refresh: refresh,
    );
  }
}