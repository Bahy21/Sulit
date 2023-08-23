import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/create_order_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/coupon_response_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping.dart';


abstract class CartRepository {
  Future <Either<Failure, CartDomainModel>> getCartItems (GetCartItemsParams params);
  Future<Either<Failure, bool>> addCartAddress (int param);
  Future<Either<Failure, Shipping>> cartStoreShipping (List<Map> params);
  Future<Either<Failure, CouponResponse>> applyCoupon (String param);
  Future<Either<Failure, bool>> createOrder (CreateOrderParams params);
}
