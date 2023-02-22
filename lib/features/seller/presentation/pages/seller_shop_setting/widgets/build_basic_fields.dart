part of 'seller_shop_setting_widgets_imports.dart';

class BuildBasicFields extends StatelessWidget {
  final SellerShopSettingController sellerShopSettingController;

  const BuildBasicFields({Key? key, required this.sellerShopSettingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5,
      ).r,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12).r,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5).r,
          color: context.colors.white,
          boxShadow: [
            BoxShadow(
                color: context.colors.greyWhite, blurRadius: 1, spreadRadius: 1)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Basic Info ",
            style: AppTextStyle.s16_w500(color: context.colors.black),
            textAlign: TextAlign.start,
          ),
          Gaps.line(context.colors.greyWhite, 20.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20, top: 10).r,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10).r,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    BlocBuilder<GenericBloc<File?>, GenericState<File?>>(
                      bloc: sellerShopSettingController.imageCubit,
                      builder: (context, state) {
                        if (state is GenericUpdateState) {
                          return InkWell(
                            onTap: () =>
                                sellerShopSettingController.getImage(context),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 150.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10).r,
                                shape: BoxShape.rectangle,
                                border:
                                    Border.all(color: context.colors.greyWhite),
                                image: DecorationImage(
                                  image: FileImage(File(state.data!.path)),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        }
                        return InkWell(
                            onTap: () =>
                                sellerShopSettingController.getImage(context),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 150.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10).r,
                                border:
                                    Border.all(color: context.colors.greyWhite),
                                shape: BoxShape.rectangle,
                              ),
                              child: InkWell(
                                onTap: () => sellerShopSettingController
                                    .getImage(context),
                                child: Padding(
                                  padding: const EdgeInsets.all(50.0).r,
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.camera_alt,
                                        size: 40.sp,
                                        color: context.colors.blackOpacity,
                                      ),
                                      Gaps.vGap10,
                                      Text(
                                        "Shop logo",
                                        style: AppTextStyle.s14_w400(
                                            color: context.colors.gray),
                                        textAlign: TextAlign.start,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          GenericTextField(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            controller: sellerShopSettingController.shopNameController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateName(),
            label: "Shop Name",
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          GenericTextField(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateName(),
            label: "Shop Phone",
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          GenericTextField(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateName(),
            label: "VAT number",
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          GenericTextField(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            controller: sellerShopSettingController.shopAddressController,
            fieldTypes: FieldTypes.clickable,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateAddress(),
            label: "Shop Address",
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          DropdownTextField<DropDownModel>(
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            title: "Country",
            hint: "Country",
            fillColor: context.colors.white,
            itemAsString: (u) => u.name,
            margin: const EdgeInsets.symmetric(vertical: 10).r,
            validate: (value) => validateDropDown(context),
            data: const [
              DropDownModel(id: 1, name: "test"),
              DropDownModel(id: 2, name: "test2"),
              DropDownModel(id: 3, name: "test3")
            ],
            onChange: (model) {},
          ),
          DropdownTextField<DropDownModel>(
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            title: "State",
            hint: "State",
            fillColor: context.colors.white,
            itemAsString: (u) => u.name,
            margin: const EdgeInsets.symmetric(vertical: 10).r,
            validate: (value) => validateDropDown(context),
            data: const [
              DropDownModel(id: 1, name: "test"),
              DropDownModel(id: 2, name: "test2"),
              DropDownModel(id: 3, name: "test3")
            ],
            onChange: (model) {},
          ),
          DropdownTextField<DropDownModel>(
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            title: "City",
            hint: "City",
            fillColor: context.colors.white,
            itemAsString: (u) => u.name,
            margin: const EdgeInsets.symmetric(vertical: 10).r,
            validate: (value) => validateDropDown(context),
            data: const [
              DropDownModel(id: 1, name: "test"),
              DropDownModel(id: 2, name: "test2"),
              DropDownModel(id: 3, name: "test3")
            ],
            onChange: (model) {},
          ),
          GenericTextField(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateAddress(),
            label: "Meta title",
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          GenericTextField(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            fieldTypes: FieldTypes.rich,
            max: 6,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateAddress(),
            label: "Meta description",
            margin: const EdgeInsets.only(top: 10, bottom: 20).r,
          ),
        ],
      ),
    );
  }
}
