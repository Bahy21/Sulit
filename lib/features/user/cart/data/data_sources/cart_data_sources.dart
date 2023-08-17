import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/cart/data/models/cart_model/cart_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';

abstract class CartDataSources {
 Future<Either<Failure, CartModel>> getCartItems (GetCartItemsParams params);
 Future<Either<Failure, bool>> addCartAddress (int param);

}