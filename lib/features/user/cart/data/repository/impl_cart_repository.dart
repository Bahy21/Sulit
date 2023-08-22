import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/cart/data/data_sources/cart_data_sources.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/create_order_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/coupon_response_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping.dart';
import 'package:flutter_tdd/features/user/cart/data/models/coupon_response_model/coupon_response_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/repository/cart_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartRepository)
class ImplCartRepository extends CartRepository with ModelToDomain{
  var dataSource = getIt<CartDataSources>();
  @override
  Future<Either<Failure, CartDomainModel>> getCartItems(GetCartItemsParams params)async {
    var result = await dataSource.getCartItems(params);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, bool>> addCartAddress(int param)async {
    return await dataSource.addCartAddress(param);
  }

  @override
  Future<Either<Failure, Shipping>> cartStoreShipping(List<Map> params)async {
    var result = await dataSource.cartStoreShipping(params);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, CouponResponse>> applyCoupon(String param)async {
    var result = await dataSource.applyCoupon(param);
    return toDomainResult(result);
  }

  @override
  Future<Either<Failure, bool>> createOrder(CreateOrderParams params)async {
    return dataSource.createOrder(params);
  }
}