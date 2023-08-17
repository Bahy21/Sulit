import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/cart.dart';

abstract class CartRepository {
  Future <Either<Failure, CartDomainModel>> getCartItems (GetCartItemsParams params);
  Future<Either<Failure, bool>> addCartAddress (int param);
}