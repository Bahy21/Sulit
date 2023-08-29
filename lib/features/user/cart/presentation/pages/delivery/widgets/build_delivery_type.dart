part of 'delivery_widgets_imports.dart';

class BuildDeliveryType extends StatelessWidget {
  final DeliveryController deliveryController;
  final SellerShipping shipping;

  const BuildDeliveryType(
      {super.key, required this.deliveryController, required this.shipping});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(Dimens.dp20),
          margin: const EdgeInsets.symmetric(
              vertical: Dimens.dp10, horizontal: Dimens.dp10),
          decoration: BoxDecoration(
            borderRadius: Dimens.borderRadius10PX,
            color: context.colors.greyWhite.withOpacity(.1),
          ),
          child: Text(
            "Choose Delivery Type",
            style: AppTextStyle.s15_w700(color: context.colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
          child: Column(
            children: [
              Row(
                children: [
                  BuildDeliveryItem(
                    title: "Home Delivery",
                    value: 0,
                    groupValue: shipping.deliveryType,
                    onChanged: (val) {
                      shipping.deliveryType = val!;
                      deliveryController.sellerShippingBloc.onUpdateData(
                          deliveryController.sellerShippingBloc.state.data);
                    },
                  ),
                  Gaps.hGap10,
                  BuildDeliveryItem(
                      title: "Local Pickup",
                      value: 1,
                      groupValue: shipping.deliveryType,
                      onChanged: (val) {
                        shipping.deliveryType = val!;
                        deliveryController.sellerShippingBloc.onUpdateData(
                            deliveryController.sellerShippingBloc.state.data);
                      }),
                ],
              ),
              Visibility(
                visible: shipping.deliveryType == 1,
                replacement: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10.r,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 15.r,
                    horizontal: 5.r,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: context.colors.greyWhite),
                    borderRadius: Dimens.borderRadius5PX,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        shipping.delivery.transitIn!,
                        style: AppTextStyle.s14_w400(
                          color: context.colors.black,
                        ),
                      ),
                      Text(
                        shipping.delivery.shippingCost!,
                        style: AppTextStyle.s14_w400(
                          color: context.colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                child: DropdownTextField<Pickup>(
                  title: "Select nearest pickup point",
                  hint: "Select nearest pickup point",
                  fillColor: context.colors.white,
                  itemAsString: (u) => u.address,
                  margin: const EdgeInsets.symmetric(vertical: Dimens.dp15),
                  validate: (value) => validateDropDown(context),
                  data: [
                    Pickup(
                      postalCode: shipping.pickup.postalCode,
                      lang: shipping.pickup.lang,
                      lat: shipping.pickup.lat,
                      phone: shipping.pickup.phone,
                      address: shipping.pickup.address,
                      id: shipping.pickup.id,
                    ),
                  ],
                  onChange: (model) => deliveryController.onSelectPoint(model),
                ),
              ),
            ],
          ),
        ),
        Gaps.vGap20,
      ],
    );
  }
}
