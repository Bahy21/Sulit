// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_type')
  String get orderType => throw _privateConstructorUsedError;
  String get subtotal => throw _privateConstructorUsedError;
  String get shipping => throw _privateConstructorUsedError;
  String get tax => throw _privateConstructorUsedError;
  @JsonKey(name: 'coupon_discount')
  String get couponDiscount => throw _privateConstructorUsedError;
  String get total => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_status')
  String get deliveryStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_viewed')
  bool get deliveryViewed => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status_viewed')
  bool get paymentStatusViewed => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  bool get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status_text')
  String get paymentStatusText => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_cancel_order')
  bool get availableCancelOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'additional_info')
  String get additionalInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_method')
  String get shippingMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_status')
  String get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_date')
  String get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'shipping_address')
  String get shippingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_name')
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_email')
  String get customerEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_reason')
  String get returnReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_details')
  List<OrderDetailsModel> get orderDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {int id,
      String code,
      @JsonKey(name: 'order_type') String orderType,
      String subtotal,
      String shipping,
      String tax,
      @JsonKey(name: 'coupon_discount') String couponDiscount,
      String total,
      String date,
      @JsonKey(name: 'delivery_status') String deliveryStatus,
      @JsonKey(name: 'delivery_viewed') bool deliveryViewed,
      @JsonKey(name: 'payment_status_viewed') bool paymentStatusViewed,
      @JsonKey(name: 'payment_status') bool paymentStatus,
      @JsonKey(name: 'payment_status_text') String paymentStatusText,
      @JsonKey(name: 'available_cancel_order') bool availableCancelOrder,
      @JsonKey(name: 'additional_info') String additionalInfo,
      @JsonKey(name: 'payment_method') String paymentMethod,
      @JsonKey(name: 'shipping_method') String shippingMethod,
      @JsonKey(name: 'order_status') String orderStatus,
      @JsonKey(name: 'order_date') String orderDate,
      @JsonKey(name: 'shipping_address') String shippingAddress,
      @JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'customer_email') String customerEmail,
      @JsonKey(name: 'return_reason') String returnReason,
      @JsonKey(name: 'order_details') List<OrderDetailsModel> orderDetails});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? orderType = null,
    Object? subtotal = null,
    Object? shipping = null,
    Object? tax = null,
    Object? couponDiscount = null,
    Object? total = null,
    Object? date = null,
    Object? deliveryStatus = null,
    Object? deliveryViewed = null,
    Object? paymentStatusViewed = null,
    Object? paymentStatus = null,
    Object? paymentStatusText = null,
    Object? availableCancelOrder = null,
    Object? additionalInfo = null,
    Object? paymentMethod = null,
    Object? shippingMethod = null,
    Object? orderStatus = null,
    Object? orderDate = null,
    Object? shippingAddress = null,
    Object? customerName = null,
    Object? customerEmail = null,
    Object? returnReason = null,
    Object? orderDetails = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String,
      shipping: null == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String,
      couponDiscount: null == couponDiscount
          ? _value.couponDiscount
          : couponDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryViewed: null == deliveryViewed
          ? _value.deliveryViewed
          : deliveryViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentStatusViewed: null == paymentStatusViewed
          ? _value.paymentStatusViewed
          : paymentStatusViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentStatusText: null == paymentStatusText
          ? _value.paymentStatusText
          : paymentStatusText // ignore: cast_nullable_to_non_nullable
              as String,
      availableCancelOrder: null == availableCancelOrder
          ? _value.availableCancelOrder
          : availableCancelOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      additionalInfo: null == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      shippingMethod: null == shippingMethod
          ? _value.shippingMethod
          : shippingMethod // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      shippingAddress: null == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerEmail: null == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      returnReason: null == returnReason
          ? _value.returnReason
          : returnReason // ignore: cast_nullable_to_non_nullable
              as String,
      orderDetails: null == orderDetails
          ? _value.orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderModelCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$_OrderModelCopyWith(
          _$_OrderModel value, $Res Function(_$_OrderModel) then) =
      __$$_OrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String code,
      @JsonKey(name: 'order_type') String orderType,
      String subtotal,
      String shipping,
      String tax,
      @JsonKey(name: 'coupon_discount') String couponDiscount,
      String total,
      String date,
      @JsonKey(name: 'delivery_status') String deliveryStatus,
      @JsonKey(name: 'delivery_viewed') bool deliveryViewed,
      @JsonKey(name: 'payment_status_viewed') bool paymentStatusViewed,
      @JsonKey(name: 'payment_status') bool paymentStatus,
      @JsonKey(name: 'payment_status_text') String paymentStatusText,
      @JsonKey(name: 'available_cancel_order') bool availableCancelOrder,
      @JsonKey(name: 'additional_info') String additionalInfo,
      @JsonKey(name: 'payment_method') String paymentMethod,
      @JsonKey(name: 'shipping_method') String shippingMethod,
      @JsonKey(name: 'order_status') String orderStatus,
      @JsonKey(name: 'order_date') String orderDate,
      @JsonKey(name: 'shipping_address') String shippingAddress,
      @JsonKey(name: 'customer_name') String customerName,
      @JsonKey(name: 'customer_email') String customerEmail,
      @JsonKey(name: 'return_reason') String returnReason,
      @JsonKey(name: 'order_details') List<OrderDetailsModel> orderDetails});
}

/// @nodoc
class __$$_OrderModelCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$_OrderModel>
    implements _$$_OrderModelCopyWith<$Res> {
  __$$_OrderModelCopyWithImpl(
      _$_OrderModel _value, $Res Function(_$_OrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? orderType = null,
    Object? subtotal = null,
    Object? shipping = null,
    Object? tax = null,
    Object? couponDiscount = null,
    Object? total = null,
    Object? date = null,
    Object? deliveryStatus = null,
    Object? deliveryViewed = null,
    Object? paymentStatusViewed = null,
    Object? paymentStatus = null,
    Object? paymentStatusText = null,
    Object? availableCancelOrder = null,
    Object? additionalInfo = null,
    Object? paymentMethod = null,
    Object? shippingMethod = null,
    Object? orderStatus = null,
    Object? orderDate = null,
    Object? shippingAddress = null,
    Object? customerName = null,
    Object? customerEmail = null,
    Object? returnReason = null,
    Object? orderDetails = null,
  }) {
    return _then(_$_OrderModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as String,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as String,
      shipping: null == shipping
          ? _value.shipping
          : shipping // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String,
      couponDiscount: null == couponDiscount
          ? _value.couponDiscount
          : couponDiscount // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryViewed: null == deliveryViewed
          ? _value.deliveryViewed
          : deliveryViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentStatusViewed: null == paymentStatusViewed
          ? _value.paymentStatusViewed
          : paymentStatusViewed // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      paymentStatusText: null == paymentStatusText
          ? _value.paymentStatusText
          : paymentStatusText // ignore: cast_nullable_to_non_nullable
              as String,
      availableCancelOrder: null == availableCancelOrder
          ? _value.availableCancelOrder
          : availableCancelOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      additionalInfo: null == additionalInfo
          ? _value.additionalInfo
          : additionalInfo // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      shippingMethod: null == shippingMethod
          ? _value.shippingMethod
          : shippingMethod // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      shippingAddress: null == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      customerEmail: null == customerEmail
          ? _value.customerEmail
          : customerEmail // ignore: cast_nullable_to_non_nullable
              as String,
      returnReason: null == returnReason
          ? _value.returnReason
          : returnReason // ignore: cast_nullable_to_non_nullable
              as String,
      orderDetails: null == orderDetails
          ? _value._orderDetails
          : orderDetails // ignore: cast_nullable_to_non_nullable
              as List<OrderDetailsModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_OrderModel extends _OrderModel {
  const _$_OrderModel(
      {required this.id,
      required this.code,
      @JsonKey(name: 'order_type') required this.orderType,
      required this.subtotal,
      required this.shipping,
      required this.tax,
      @JsonKey(name: 'coupon_discount') required this.couponDiscount,
      required this.total,
      required this.date,
      @JsonKey(name: 'delivery_status') required this.deliveryStatus,
      @JsonKey(name: 'delivery_viewed') required this.deliveryViewed,
      @JsonKey(name: 'payment_status_viewed') required this.paymentStatusViewed,
      @JsonKey(name: 'payment_status') required this.paymentStatus,
      @JsonKey(name: 'payment_status_text') required this.paymentStatusText,
      @JsonKey(name: 'available_cancel_order')
      required this.availableCancelOrder,
      @JsonKey(name: 'additional_info') required this.additionalInfo,
      @JsonKey(name: 'payment_method') required this.paymentMethod,
      @JsonKey(name: 'shipping_method') required this.shippingMethod,
      @JsonKey(name: 'order_status') required this.orderStatus,
      @JsonKey(name: 'order_date') required this.orderDate,
      @JsonKey(name: 'shipping_address') required this.shippingAddress,
      @JsonKey(name: 'customer_name') required this.customerName,
      @JsonKey(name: 'customer_email') required this.customerEmail,
      @JsonKey(name: 'return_reason') required this.returnReason,
      @JsonKey(name: 'order_details')
      required final List<OrderDetailsModel> orderDetails})
      : _orderDetails = orderDetails,
        super._();

  factory _$_OrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderModelFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  @JsonKey(name: 'order_type')
  final String orderType;
  @override
  final String subtotal;
  @override
  final String shipping;
  @override
  final String tax;
  @override
  @JsonKey(name: 'coupon_discount')
  final String couponDiscount;
  @override
  final String total;
  @override
  final String date;
  @override
  @JsonKey(name: 'delivery_status')
  final String deliveryStatus;
  @override
  @JsonKey(name: 'delivery_viewed')
  final bool deliveryViewed;
  @override
  @JsonKey(name: 'payment_status_viewed')
  final bool paymentStatusViewed;
  @override
  @JsonKey(name: 'payment_status')
  final bool paymentStatus;
  @override
  @JsonKey(name: 'payment_status_text')
  final String paymentStatusText;
  @override
  @JsonKey(name: 'available_cancel_order')
  final bool availableCancelOrder;
  @override
  @JsonKey(name: 'additional_info')
  final String additionalInfo;
  @override
  @JsonKey(name: 'payment_method')
  final String paymentMethod;
  @override
  @JsonKey(name: 'shipping_method')
  final String shippingMethod;
  @override
  @JsonKey(name: 'order_status')
  final String orderStatus;
  @override
  @JsonKey(name: 'order_date')
  final String orderDate;
  @override
  @JsonKey(name: 'shipping_address')
  final String shippingAddress;
  @override
  @JsonKey(name: 'customer_name')
  final String customerName;
  @override
  @JsonKey(name: 'customer_email')
  final String customerEmail;
  @override
  @JsonKey(name: 'return_reason')
  final String returnReason;
  final List<OrderDetailsModel> _orderDetails;
  @override
  @JsonKey(name: 'order_details')
  List<OrderDetailsModel> get orderDetails {
    if (_orderDetails is EqualUnmodifiableListView) return _orderDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderDetails);
  }

  @override
  String toString() {
    return 'OrderModel(id: $id, code: $code, orderType: $orderType, subtotal: $subtotal, shipping: $shipping, tax: $tax, couponDiscount: $couponDiscount, total: $total, date: $date, deliveryStatus: $deliveryStatus, deliveryViewed: $deliveryViewed, paymentStatusViewed: $paymentStatusViewed, paymentStatus: $paymentStatus, paymentStatusText: $paymentStatusText, availableCancelOrder: $availableCancelOrder, additionalInfo: $additionalInfo, paymentMethod: $paymentMethod, shippingMethod: $shippingMethod, orderStatus: $orderStatus, orderDate: $orderDate, shippingAddress: $shippingAddress, customerName: $customerName, customerEmail: $customerEmail, returnReason: $returnReason, orderDetails: $orderDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.shipping, shipping) ||
                other.shipping == shipping) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.couponDiscount, couponDiscount) ||
                other.couponDiscount == couponDiscount) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.deliveryViewed, deliveryViewed) ||
                other.deliveryViewed == deliveryViewed) &&
            (identical(other.paymentStatusViewed, paymentStatusViewed) ||
                other.paymentStatusViewed == paymentStatusViewed) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.paymentStatusText, paymentStatusText) ||
                other.paymentStatusText == paymentStatusText) &&
            (identical(other.availableCancelOrder, availableCancelOrder) ||
                other.availableCancelOrder == availableCancelOrder) &&
            (identical(other.additionalInfo, additionalInfo) ||
                other.additionalInfo == additionalInfo) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.shippingMethod, shippingMethod) ||
                other.shippingMethod == shippingMethod) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerEmail, customerEmail) ||
                other.customerEmail == customerEmail) &&
            (identical(other.returnReason, returnReason) ||
                other.returnReason == returnReason) &&
            const DeepCollectionEquality()
                .equals(other._orderDetails, _orderDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        code,
        orderType,
        subtotal,
        shipping,
        tax,
        couponDiscount,
        total,
        date,
        deliveryStatus,
        deliveryViewed,
        paymentStatusViewed,
        paymentStatus,
        paymentStatusText,
        availableCancelOrder,
        additionalInfo,
        paymentMethod,
        shippingMethod,
        orderStatus,
        orderDate,
        shippingAddress,
        customerName,
        customerEmail,
        returnReason,
        const DeepCollectionEquality().hash(_orderDetails)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      __$$_OrderModelCopyWithImpl<_$_OrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderModelToJson(
      this,
    );
  }
}

abstract class _OrderModel extends OrderModel {
  const factory _OrderModel(
      {required final int id,
      required final String code,
      @JsonKey(name: 'order_type') required final String orderType,
      required final String subtotal,
      required final String shipping,
      required final String tax,
      @JsonKey(name: 'coupon_discount') required final String couponDiscount,
      required final String total,
      required final String date,
      @JsonKey(name: 'delivery_status') required final String deliveryStatus,
      @JsonKey(name: 'delivery_viewed') required final bool deliveryViewed,
      @JsonKey(name: 'payment_status_viewed')
      required final bool paymentStatusViewed,
      @JsonKey(name: 'payment_status') required final bool paymentStatus,
      @JsonKey(name: 'payment_status_text')
      required final String paymentStatusText,
      @JsonKey(name: 'available_cancel_order')
      required final bool availableCancelOrder,
      @JsonKey(name: 'additional_info') required final String additionalInfo,
      @JsonKey(name: 'payment_method') required final String paymentMethod,
      @JsonKey(name: 'shipping_method') required final String shippingMethod,
      @JsonKey(name: 'order_status') required final String orderStatus,
      @JsonKey(name: 'order_date') required final String orderDate,
      @JsonKey(name: 'shipping_address') required final String shippingAddress,
      @JsonKey(name: 'customer_name') required final String customerName,
      @JsonKey(name: 'customer_email') required final String customerEmail,
      @JsonKey(name: 'return_reason') required final String returnReason,
      @JsonKey(name: 'order_details')
      required final List<OrderDetailsModel> orderDetails}) = _$_OrderModel;
  const _OrderModel._() : super._();

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$_OrderModel.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  @JsonKey(name: 'order_type')
  String get orderType;
  @override
  String get subtotal;
  @override
  String get shipping;
  @override
  String get tax;
  @override
  @JsonKey(name: 'coupon_discount')
  String get couponDiscount;
  @override
  String get total;
  @override
  String get date;
  @override
  @JsonKey(name: 'delivery_status')
  String get deliveryStatus;
  @override
  @JsonKey(name: 'delivery_viewed')
  bool get deliveryViewed;
  @override
  @JsonKey(name: 'payment_status_viewed')
  bool get paymentStatusViewed;
  @override
  @JsonKey(name: 'payment_status')
  bool get paymentStatus;
  @override
  @JsonKey(name: 'payment_status_text')
  String get paymentStatusText;
  @override
  @JsonKey(name: 'available_cancel_order')
  bool get availableCancelOrder;
  @override
  @JsonKey(name: 'additional_info')
  String get additionalInfo;
  @override
  @JsonKey(name: 'payment_method')
  String get paymentMethod;
  @override
  @JsonKey(name: 'shipping_method')
  String get shippingMethod;
  @override
  @JsonKey(name: 'order_status')
  String get orderStatus;
  @override
  @JsonKey(name: 'order_date')
  String get orderDate;
  @override
  @JsonKey(name: 'shipping_address')
  String get shippingAddress;
  @override
  @JsonKey(name: 'customer_name')
  String get customerName;
  @override
  @JsonKey(name: 'customer_email')
  String get customerEmail;
  @override
  @JsonKey(name: 'return_reason')
  String get returnReason;
  @override
  @JsonKey(name: 'order_details')
  List<OrderDetailsModel> get orderDetails;
  @override
  @JsonKey(ignore: true)
  _$$_OrderModelCopyWith<_$_OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
