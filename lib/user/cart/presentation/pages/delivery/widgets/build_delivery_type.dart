part of 'delivery_widgets_imports.dart';

class BuildDeliveryType extends StatelessWidget {
  final DeliveryController deliveryController;

  const BuildDeliveryType({super.key, required this.deliveryController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(Dimens.dp20),
          margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
          decoration: BoxDecoration(
            borderRadius: Dimens.borderRadius10PX,
            color: context.colors.greyWhite.withOpacity(.1),
          ),
          child: Text(
            "Choose Delivery Type",
            style: AppTextStyle.s15_w700(color: context.colors.black),
          ),
        ),
        BlocBuilder<GenericBloc<int>, GenericState<int>>(
          bloc: deliveryController.deliveryTypeCubit,
          builder: (_, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
              child: Column(
                children: [
                  Row(
                    children: [
                      BuildDeliveryItem(
                        title: "Home Delivery",
                        value: 0,
                        groupValue: state.data,
                        onChanged: (val) => deliveryController.deliveryTypeCubit
                            .onUpdateData(val!),
                      ),
                      Gaps.hGap10,
                      BuildDeliveryItem(
                        title: "Local Pickup",
                        value: 1,
                        groupValue: state.data,
                        onChanged: (val) => deliveryController.deliveryTypeCubit
                            .onUpdateData(val!),
                      ),
                    ],
                  ),
                  Visibility(
                    visible: state.data == 1,
                    child: DropdownTextField<DropDownModel>(
                      title: "Select nearest pickup point",
                      hint: "Select nearest pickup point",
                      fillColor: context.colors.white,
                      itemAsString: (u) => u.name,
                      margin: const EdgeInsets.symmetric(vertical: Dimens.dp15),
                      validate: (value) => validateDropDown(context),
                      data: const [
                        DropDownModel(id: 1, name: "test"),
                        DropDownModel(id: 2, name: "test2"),
                        DropDownModel(id: 3, name: "test3")
                      ],
                      onChange: (model) =>
                          deliveryController.onSelectPoint(model),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        Gaps.vGap20,
      ],
    );
  }
}
