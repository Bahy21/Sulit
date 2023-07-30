part of 'build_register_widgets_imports.dart';

class BuildRegisterFormFields extends StatelessWidget {
  final RegisterController registerController;

  const BuildRegisterFormFields({Key? key, required this.registerController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerController.formKey,
      child: Column(
        children: [
          GenericTextField(
            controller: registerController.nameController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.validateName(),
            label: "Full Name",
            margin: Dimens.inputFieldMargin,
          ),
          GenericTextField(
            controller: registerController.emailController,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmail(),
            label: "E-mail",
          ),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: registerController.passwordCubit,
            builder: (context, state) {
              return GenericTextField(
                controller: registerController.passwordController,
                fieldTypes:
                    !state.data ? FieldTypes.password : FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.done,
                validate: (value) => value?.validatePassword(),
                label: "Password",
                margin: Dimens.inputFieldMargin,
                suffixIcon: IconButton(
                  onPressed: () => registerController.passwordCubit
                      .onUpdateData(!state.data),
                  icon: Icon(
                    !state.data
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    size: 17.sp,
                    color: context.colors.primary,
                  ),
                ),
              );
            },
          ),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: registerController.confirmpasswordCubit,
            builder: (context, state) {
              return GenericTextField(
                controller: registerController.confirmPasswordController,
                fieldTypes:
                    !state.data ? FieldTypes.password : FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.done,
                validate: (value) => value?.validatePassword(),
                label: "Confirm Password",
                suffixIcon: IconButton(
                  onPressed: () => registerController.confirmpasswordCubit
                      .onUpdateData(!state.data),
                  icon: Icon(
                    !state.data
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    size: 17.sp,
                    color: context.colors.primary,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
