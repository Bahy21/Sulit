part of 'profile_widgets_imports.dart';

class BuildProfileFormFields extends StatelessWidget {
  final ProfileController profileController;

  const BuildProfileFormFields({Key? key, required this.profileController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: profileController.formKey,
      child: Column(
        children: [
          GenericTextField(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            controller: profileController.nameController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateName(),
            label: "Your Name",
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          GenericTextField(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            controller: profileController.emailController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmail(),
            label: "Your E-mail",
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          GenericTextField(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            controller: profileController.shopPhoneController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.number,
            action: TextInputAction.next,
            validate: (value) => value?.validatePhone(),
            label: "Shop phone",
            margin: const EdgeInsets.symmetric(vertical: 10).r,

          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                BlocBuilder<GenericBloc<File?>, GenericState<File?>>(
                  bloc: profileController.imageCubit,
                  builder: (context, state) {
                    if (state is GenericUpdateState) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle,
                            border:
                            Border.all(color: context.colors.primary),
                            image: DecorationImage(
                              image: FileImage(state.data!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    }
                    return InkWell(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                            Border.all(color: context.colors.greyWhite),
                            shape: BoxShape.rectangle,
                          ),
                          child: InkWell(
                            onTap: () =>
                                profileController.getImage(context),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.image_outlined,
                                size: 50,
                                color: context.colors.greyWhite,
                              ),
                            ),
                          ),
                        ));
                  },
                ),
              ],
            ),
          ),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
              bloc: profileController.passwordCubit,
              builder: (context, state) {
                return GenericTextField(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10)
                          .r,
                  controller: profileController.passwordController,
                  fieldTypes:
                      !state.data ? FieldTypes.password : FieldTypes.normal,
                  type: TextInputType.text,
                  action: TextInputAction.done,
                  validate: (value) => value?.validatePassword(),
                  label: "Your Password",
                  margin: const EdgeInsets.symmetric(vertical: 10).r,
                  suffixIcon: IconButton(
                    onPressed: () => profileController.passwordCubit
                        .onUpdateData(!state.data),
                    icon: Icon(
                      !state.data
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 20.sp,
                      color: context.colors.primary,
                    ),
                  ),
                );
              }),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
              bloc: profileController.confirmPasswordCubit,
              builder: (context, state) {
                return GenericTextField(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10)
                          .r,
                  controller: profileController.confirmPasswordController,
                  fieldTypes:
                      !state.data ? FieldTypes.password : FieldTypes.normal,
                  type: TextInputType.text,
                  action: TextInputAction.done,
                  validate: (value) => value?.validatePassword(),
                  label: "Confirm Your Password",
                  margin: const EdgeInsets.symmetric(vertical: 10).r,
                  suffixIcon: IconButton(
                    onPressed: () => profileController.confirmPasswordCubit
                        .onUpdateData(!state.data),
                    icon: Icon(
                      !state.data
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 20.sp,
                      color: context.colors.primary,
                    ),
                  ),
                );
              }),
          GenericTextField(
            radius: BorderRadius.circular(10).r,
            fillColor: context.colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16).r,
            fieldTypes: FieldTypes.clickable,
            label: "Addresses",
            action: TextInputAction.go,
            type: TextInputType.text,
            margin: const EdgeInsets.symmetric(vertical: 10).r,

            onTab: () => AutoRouter.of(context).push(const AddressesRoute()),
            validate: (value) => value!.validateEmpty(),
          ),
        ],
      ),
    );
  }
}
