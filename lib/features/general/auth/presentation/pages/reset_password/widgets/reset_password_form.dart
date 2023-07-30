part of 'reset_password_widgets_imports.dart';

class ResetPasswordForm extends StatelessWidget {
  final ResetPasswordController resetPasswordController;

  const ResetPasswordForm({Key? key, required this.resetPasswordController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: resetPasswordController.formKey,
      child: Column(
        children: [
          GenericTextField(
            controller: resetPasswordController.email,
            fieldTypes: FieldTypes.readonly,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.noValidate(),
            label: "Email",
          ),
          GenericTextField(
            controller: resetPasswordController.code,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            margin: Dimens.inputFieldMargin,
            validate: (value) => value?.validateEmpty(),
            label: "Code",
          ),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: resetPasswordController.passwordCubit,
            builder: (context, state) {
              return GenericTextField(
                controller: resetPasswordController.password,
                fieldTypes: !state.data ? FieldTypes.password : FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.done,
                validate: (value) => value?.validatePassword(),
                label: "Password",
                suffixIcon: IconButton(
                  onPressed: () => resetPasswordController.passwordCubit
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
            bloc: resetPasswordController.confirmPasswordCubit,
            builder: (context, state) {
              return GenericTextField(
                controller: resetPasswordController.confirmPassword,
                fieldTypes: !state.data ? FieldTypes.password : FieldTypes.normal,
                type: TextInputType.text,
                action: TextInputAction.done,
                validate: (value) => value?.validatePassword(),
                label: "Confirm Password",
                margin: Dimens.inputFieldMargin,
                suffixIcon: IconButton(
                  onPressed: () => resetPasswordController.confirmPasswordCubit
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
