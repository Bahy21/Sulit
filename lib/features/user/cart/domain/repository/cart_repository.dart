import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/cart/data/models/order_summary_model/order_summary_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/create_order_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/delete_cart_item_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/update_cart_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/coupon_response_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/add_product_to_cart_params.dart';


abstract class CartRepository {
  Future <Either<Failure, CartDomainModel>> getCartItems (GetCartItemsParams params);
  Future<Either<Failure, bool>> addCartAddress (int param);
  Future<Either<Failure, Shipping>> cartStoreShipping (List<Map> params);
  Future<Either<Failure, CouponResponse>> applyCoupon (String param);
  Future<Either<Failure, OrderSummaryModel>> createOrder (CreateOrderParams params);
  Future<Either<Failure, String>> addToCart (AddProductToCartParams params) ;
  Future<Either<Failure, bool>> deleteCartItem (DeleteCartItemParams params);
  Future<Either<Failure, CartDomainModel>> updateCartItem (UpdateCartItemParams params);
}
