part of 'seller_add_product_specifications_widgets_imports.dart';

class BuildProductSpecificationFields extends StatelessWidget {
  final SellerAddProductSpecificationsController
      sellerAddProductSpecificationsController;

  const BuildProductSpecificationFields(
      {super.key, required this.sellerAddProductSpecificationsController});

  @override
  Widget build(BuildContext context) {
    return BuildCustomContainer(
      title: "Product Variation",
      child: BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
        bloc: sellerAddProductSpecificationsController.showColorsCubit,
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Colors",
                    style: AppTextStyle.s14_w400(
                      color: context.colors.black,
                    ),
                  ),
                  Switch(
                    activeColor: context.colors.darkPurple,
                    inactiveThumbColor: context.colors.white,
                    inactiveTrackColor: context.colors.gray,
                    value: state.data,
                    onChanged: (val) => sellerAddProductSpecificationsController
                        .showColorsCubit
                        .onUpdateData(!state.data),
                  ),
                ],
              ),
              Visibility(
                visible: state.data,
                child: MultiDropDownField<String>(
                  selectedItems: [],
                  title: "Colors",
                  label: "Colors",
                  data: const [
                    "test",
                    "test2",
                    "test3",
                  ],
                  onConfirm: (data) {},
                  onItemClick: (item) {},
                  buttonsColor: context.colors.white,
                ),
              ),
              BuildAttributes(
                sellerAddProductSpecificationsController:
                    sellerAddProductSpecificationsController,
              ),
            ],
          );
        },
      ),
    );
  }
}
