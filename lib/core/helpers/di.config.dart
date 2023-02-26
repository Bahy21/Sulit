// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_tdd/core/helpers/firebase_analytics_helper.dart' as _i6;
import 'package:flutter_tdd/core/helpers/global_context.dart' as _i9;
import 'package:flutter_tdd/core/helpers/global_notification.dart' as _i10;
import 'package:flutter_tdd/core/helpers/loading_helper.dart' as _i14;
import 'package:flutter_tdd/core/helpers/new_version_helper.dart' as _i16;
import 'package:flutter_tdd/core/helpers/rate_app_helper.dart' as _i20;
import 'package:flutter_tdd/core/helpers/utilities.dart' as _i21;
import 'package:flutter_tdd/core/http/dio_helper/actions/delete.dart' as _i3;
import 'package:flutter_tdd/core/http/dio_helper/actions/get.dart' as _i8;
import 'package:flutter_tdd/core/http/dio_helper/actions/patch.dart' as _i17;
import 'package:flutter_tdd/core/http/dio_helper/actions/post.dart' as _i18;
import 'package:flutter_tdd/core/http/dio_helper/actions/put.dart' as _i19;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_header.dart' as _i4;
import 'package:flutter_tdd/core/http/dio_helper/utils/dio_options.dart' as _i5;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_errors.dart'
    as _i11;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_json_response.dart'
    as _i12;
import 'package:flutter_tdd/core/http/dio_helper/utils/handle_request_body.dart'
    as _i13;
import 'package:flutter_tdd/core/http/generic_http/generic_http.dart' as _i7;
import 'package:flutter_tdd/core/network/network_info.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.Delete>(() => _i3.Delete());
    gh.lazySingleton<_i4.DioHeader>(() => _i4.DioHeader());
    gh.lazySingleton<_i5.DioOptions>(() => _i5.DioOptions());
    gh.lazySingleton<_i6.FirebaseAnalyticsHelper>(
        () => _i6.FirebaseAnalyticsHelper());
    gh.lazySingleton<_i7.GenericHttpImpl<dynamic>>(
        () => _i7.GenericHttpImpl<dynamic>());
    gh.lazySingleton<_i8.Get>(() => _i8.Get());
    gh.lazySingleton<_i9.GlobalContext>(() => _i9.GlobalContext());
    gh.lazySingleton<_i10.GlobalNotification>(() => _i10.GlobalNotification());
    gh.lazySingleton<_i11.HandleErrors>(() => _i11.HandleErrors());
    gh.lazySingleton<_i12.HandleJsonResponse<dynamic>>(
        () => _i12.HandleJsonResponse<dynamic>());
    gh.lazySingleton<_i13.HandleRequestBody>(() => _i13.HandleRequestBody());
    gh.lazySingleton<_i14.LoadingHelper>(() => _i14.LoadingHelper());
    gh.lazySingleton<_i15.NetworkInfoImpl>(() => _i15.NetworkInfoImpl());
    gh.lazySingleton<_i16.NewVersionHelper>(() => _i16.NewVersionHelper());
    gh.lazySingleton<_i17.Patch>(() => _i17.Patch());
    gh.lazySingleton<_i18.Post>(() => _i18.Post());
    gh.lazySingleton<_i19.Put>(() => _i19.Put());
    gh.lazySingleton<_i20.RateAppHelper>(() => _i20.RateAppHelper());
    gh.lazySingleton<_i21.Utilities>(() => _i21.Utilities());
    return this;
  }
}
