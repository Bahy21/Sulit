// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_tdd/core/helpers/firebase_analytics_helper.dart'
    as _i35;
import 'package:flutter_tdd/core/helpers/global_context.dart' as _i38;
import 'package:flutter_tdd/core/helpers/global_notification.dart' as _i39;
import 'package:flutter_tdd/core/helpers/loading_helper.dart' as _i43;
import 'package:flutter_tdd/core/helpers/new_version_helper.dart' as _i45;
import 'package:flutter_tdd/core/helpers/rate_app_helper.dart' as _i65;
import 'package:flutter_tdd/core/helpers/utilities.dart' as _i78;
import 'package:flutter_tdd/core/http/dio_helper/actions/delete.dart' as _i32;
import 'package:flutter_tdd/core/http/dio_helper/actions/get.dart' as _i37;
import 'package:flutter_tdd/core/http/dio_helper/actions/patch.dart' as _i50;
import 'package:flutter_tdd/core/http/dio_helper/actions/post.dart' as _i51;
import 'package:flutter_tdd/core/http/dio_helper/actions/put.dart' as _i64;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_header.dart' as _i33;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_options.dart'
    as _i34;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_errors.dart'
    as _i40;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_json_response.dart'
    as _i41;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_request_body.dart'
    as _i42;
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart' as _i36;
import 'package:flutter_tdd/core/network/network_info.dart' as _i44;
import 'package:flutter_tdd/features/general/auth/data/data_source/auth_data_source.dart'
    as _i7;
import 'package:flutter_tdd/features/general/auth/data/data_source/impl_auth_data_source.dart'
    as _i8;
import 'package:flutter_tdd/features/general/auth/data/repository/impl_auth_repository.dart'
    as _i11;
import 'package:flutter_tdd/features/general/auth/domain/repository/auth_repository.dart'
    as _i10;
import 'package:flutter_tdd/features/general/auth/presentation/manager/helpers/auth_helper.dart'
    as _i9;
import 'package:flutter_tdd/features/general/common/data/data_sources/common_data_sources.dart'
    as _i24;
import 'package:flutter_tdd/features/general/common/data/data_sources/impl_common_data_sources.dart'
    as _i25;
import 'package:flutter_tdd/features/general/common/data/repository/impl_common_repository.dart'
    as _i27;
import 'package:flutter_tdd/features/general/common/domain/repository/common_repository.dart'
    as _i26;
import 'package:flutter_tdd/features/user/addresses/data/data_sources/addresses_data_sources.dart'
    as _i3;
import 'package:flutter_tdd/features/user/addresses/data/data_sources/impl_addresses_data_sources.dart'
    as _i4;
import 'package:flutter_tdd/features/user/addresses/data/repository/impl_addresses_repository.dart'
    as _i6;
import 'package:flutter_tdd/features/user/addresses/domain/repository/addresses_repository.dart'
    as _i5;
import 'package:flutter_tdd/features/user/base/data/data_sources/base_data_sources.dart'
    as _i12;
import 'package:flutter_tdd/features/user/base/data/data_sources/impl_base_data_sources.dart'
    as _i13;
import 'package:flutter_tdd/features/user/base/data/repository/impl_base_repository.dart'
    as _i15;
import 'package:flutter_tdd/features/user/base/domain/repository/base_repository.dart'
    as _i14;
import 'package:flutter_tdd/features/user/cart/data/data_sources/cart_data_sources.dart'
    as _i16;
import 'package:flutter_tdd/features/user/cart/data/data_sources/impl_cart_data_sources.dart'
    as _i17;
import 'package:flutter_tdd/features/user/cart/data/repository/cart_repository.dart'
    as _i18;
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart'
    as _i19;
import 'package:flutter_tdd/features/user/category/data/data_sources/category_data_sources.dart'
    as _i20;
import 'package:flutter_tdd/features/user/category/data/data_sources/impl_category_data_sources.dart'
    as _i21;
import 'package:flutter_tdd/features/user/category/data/repository/impl_category_repository.dart'
    as _i23;
import 'package:flutter_tdd/features/user/category/domain/repository/category_repository.dart'
    as _i22;
import 'package:flutter_tdd/features/user/dashboard/data/data_sources/dashboard_data_sources.dart'
    as _i28;
import 'package:flutter_tdd/features/user/dashboard/data/data_sources/impl_dashboard_data_sources.dart'
    as _i29;
import 'package:flutter_tdd/features/user/dashboard/data/repository/impl_dashboard_repository.dart'
    as _i31;
import 'package:flutter_tdd/features/user/dashboard/domain/repository/dashboard_repository.dart'
    as _i30;
import 'package:flutter_tdd/features/user/notifications/data/data_sources/impl_notifications_data_sources.dart'
    as _i47;
import 'package:flutter_tdd/features/user/notifications/data/data_sources/notifications_data_sources.dart'
    as _i46;
import 'package:flutter_tdd/features/user/notifications/data/repository/impl_notifications_repository.dart'
    as _i49;
import 'package:flutter_tdd/features/user/notifications/domain/repository/notifications_repository.dart'
    as _i48;
import 'package:flutter_tdd/features/user/products/data/data_source/impl_products_data_source.dart'
    as _i53;
import 'package:flutter_tdd/features/user/products/data/data_source/products_data_source.dart'
    as _i52;
import 'package:flutter_tdd/features/user/products/data/repository/impl_products_repository.dart'
    as _i55;
import 'package:flutter_tdd/features/user/products/domain/repository/products_repository.dart'
    as _i54;
import 'package:flutter_tdd/features/user/profile/data/data_sources/impl_profile_data_sources.dart'
    as _i57;
import 'package:flutter_tdd/features/user/profile/data/data_sources/profile_data_sources.dart'
    as _i56;
import 'package:flutter_tdd/features/user/profile/data/repository/impl_profile_repository.dart'
    as _i59;
import 'package:flutter_tdd/features/user/profile/domain/repository/profile_repository.dart'
    as _i58;
import 'package:flutter_tdd/features/user/purchasing/data/data_sources/impl_purchasing_data_sources.dart'
    as _i61;
import 'package:flutter_tdd/features/user/purchasing/data/data_sources/purchasing_data_sources.dart'
    as _i60;
import 'package:flutter_tdd/features/user/purchasing/data/repository/impl_purchasing_repository.dart'
    as _i63;
import 'package:flutter_tdd/features/user/purchasing/domain/repository/purchasing_repository.dart'
    as _i62;
import 'package:flutter_tdd/features/user/sale/data/data_sources/impl_sale_data_sources.dart'
    as _i67;
import 'package:flutter_tdd/features/user/sale/data/data_sources/sale_data_sources.dart'
    as _i66;
import 'package:flutter_tdd/features/user/sale/data/repository/impl_sale_repository.dart'
    as _i69;
import 'package:flutter_tdd/features/user/sale/domain/repository/sale_repository.dart'
    as _i68;
import 'package:flutter_tdd/features/user/search/data/data_sources/impl_search_data_sources.dart'
    as _i71;
import 'package:flutter_tdd/features/user/search/data/data_sources/search_data_sources.dart'
    as _i70;
import 'package:flutter_tdd/features/user/search/data/repository/impl_search_repository.dart'
    as _i73;
import 'package:flutter_tdd/features/user/search/domain/repository/search_repository.dart'
    as _i72;
import 'package:flutter_tdd/features/user/tickets/data/data_sources/impl_tickets_data_sources.dart'
    as _i75;
import 'package:flutter_tdd/features/user/tickets/data/data_sources/tickets_data_sources.dart'
    as _i74;
import 'package:flutter_tdd/features/user/tickets/data/repository/impl_tickets_repository.dart'
    as _i77;
import 'package:flutter_tdd/features/user/tickets/domain/repository/tickets_repository.dart'
    as _i76;
import 'package:flutter_tdd/features/user/wallet/data/data_sources/impl_wallet_data_sources.dart'
    as _i80;
import 'package:flutter_tdd/features/user/wallet/data/data_sources/wallet_data_sources.dart'
    as _i79;
import 'package:flutter_tdd/features/user/wallet/data/repository/impl_wallet_repository.dart'
    as _i82;
import 'package:flutter_tdd/features/user/wallet/domain/repository/wallet_repository.dart'
    as _i81;
import 'package:flutter_tdd/features/user/wishlist/data/data_sources/impl_wishlist_data_sources.dart'
    as _i84;
import 'package:flutter_tdd/features/user/wishlist/data/data_sources/wishlist_data_sources.dart'
    as _i83;
import 'package:flutter_tdd/features/user/wishlist/data/repository/impl_wishlist_repository.dart'
    as _i86;
import 'package:flutter_tdd/features/user/wishlist/domain/repository/wishlist_repository.dart'
    as _i85;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AddressesDataSources>(() => _i4.ImplAddressesDataSources());
    gh.factory<_i5.AddressesRepository>(() => _i6.ImplAddressesRepository());
    gh.factory<_i7.AuthDataSource>(() => _i8.ImplAuthDataSource());
    gh.factory<_i9.AuthHelper>(() => _i9.AuthHelper());
    gh.factory<_i10.AuthRepository>(() => _i11.ImplAuthRepository());
    gh.factory<_i12.BaseDataSources>(() => _i13.ImplBaseDataSources());
    gh.factory<_i14.BaseRepository>(() => _i15.ImplBaseRepository());
    gh.factory<_i16.CartDataSources>(() => _i17.ImplCartDataSources());
    gh.factory<_i18.CartRepository>(() => _i19.ImplCartRepository());
    gh.factory<_i20.CategoryDataSources>(() => _i21.ImplCategoryDataSources());
    gh.factory<_i22.CategoryRepository>(() => _i23.ImplCategoryRepository());
    gh.factory<_i24.CommonDataSources>(() => _i25.ImplCommonDataSources());
    gh.factory<_i26.CommonRepository>(() => _i27.ImplCommonRepository());
    gh.factory<_i28.DashboardDataSources>(
        () => _i29.ImplDashboardDataSources());
    gh.factory<_i30.DashboardRepository>(() => _i31.ImplDashboardRepository());
    gh.lazySingleton<_i32.Delete>(() => _i32.Delete());
    gh.lazySingleton<_i33.DioHeader>(() => _i33.DioHeader());
    gh.lazySingleton<_i34.DioOptions>(() => _i34.DioOptions());
    gh.lazySingleton<_i35.FirebaseAnalyticsHelper>(
        () => _i35.FirebaseAnalyticsHelper());
    gh.lazySingleton<_i36.GenericHttpImpl<dynamic>>(
        () => _i36.GenericHttpImpl<dynamic>());
    gh.lazySingleton<_i37.Get>(() => _i37.Get());
    gh.lazySingleton<_i38.GlobalContext>(() => _i38.GlobalContext());
    gh.lazySingleton<_i39.GlobalNotification>(() => _i39.GlobalNotification());
    gh.lazySingleton<_i40.HandleErrors>(() => _i40.HandleErrors());
    gh.lazySingleton<_i41.HandleJsonResponse<dynamic>>(
        () => _i41.HandleJsonResponse<dynamic>());
    gh.lazySingleton<_i42.HandleRequestBody>(() => _i42.HandleRequestBody());
    gh.lazySingleton<_i43.LoadingHelper>(() => _i43.LoadingHelper());
    gh.lazySingleton<_i44.NetworkInfoImpl>(() => _i44.NetworkInfoImpl());
    gh.lazySingleton<_i45.NewVersionHelper>(() => _i45.NewVersionHelper());
    gh.factory<_i46.NotificationsDataSources>(
        () => _i47.ImplNotificationsDataSources());
    gh.factory<_i48.NotificationsRepository>(
        () => _i49.ImplNotificationsRepository());
    gh.lazySingleton<_i50.Patch>(() => _i50.Patch());
    gh.lazySingleton<_i51.Post>(() => _i51.Post());
    gh.factory<_i52.ProductsDataSource>(() => _i53.ImplProductsDataSource());
    gh.factory<_i54.ProductsRepository>(() => _i55.ImplProductsRepository());
    gh.factory<_i56.ProfileDataSources>(() => _i57.ImplProfileDataSources());
    gh.factory<_i58.ProfileRepository>(() => _i59.ImplProfileRepository());
    gh.factory<_i60.PurchasingDataSources>(
        () => _i61.ImplPurchasingDataSources());
    gh.factory<_i62.PurchasingRepository>(
        () => _i63.ImplPurchasingRepository());
    gh.lazySingleton<_i64.Put>(() => _i64.Put());
    gh.lazySingleton<_i65.RateAppHelper>(() => _i65.RateAppHelper());
    gh.factory<_i66.SaleDataSources>(() => _i67.ImplSaleRepository());
    gh.factory<_i68.SaleRepository>(() => _i69.ImplSaleRepository());
    gh.factory<_i70.SearchDataSources>(() => _i71.ImplSearchDataSources());
    gh.factory<_i72.SearchRepository>(() => _i73.ImplSearchRepository());
    gh.factory<_i74.TicketsDataSources>(() => _i75.ImplTicketsDataSources());
    gh.factory<_i76.TicketsRepository>(() => _i77.ImplTicketsRepository());
    gh.lazySingleton<_i78.Utilities>(() => _i78.Utilities());
    gh.factory<_i79.WalletDataSources>(() => _i80.ImplWalletDataSources());
    gh.factory<_i81.WalletRepository>(() => _i82.ImplWalletRepository());
    gh.factory<_i83.WishlistDataSources>(() => _i84.ImplWishlistDataSources());
    gh.factory<_i85.WishlistRepository>(() => _i86.ImplWishlistRepository());
    return this;
  }
}
