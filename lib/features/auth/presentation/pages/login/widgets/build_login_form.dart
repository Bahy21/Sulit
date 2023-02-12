part of 'login_widgets_imports.dart';

class BuildLoginForm extends StatelessWidget {
  final LoginController controller;

  const BuildLoginForm({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          GenericTextField(
            controller: controller.email,
            fieldTypes: FieldTypes.normal,
            type: TextInputType.emailAddress,
            action: TextInputAction.next,
            validate: (value) => value?.validateEmpty(),
            label: "E-mail",
            margin: const EdgeInsets.only(top: 20),
          ),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
              bloc: controller.passwordCubit,
              builder: (context, state) {
                return GenericTextField(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  controller: controller.password,
                  fieldTypes: !state.data ? FieldTypes.password : FieldTypes.normal,
                  type: TextInputType.visiblePassword,
                  action: TextInputAction.done,
                  validate: (value) => value?.validatePassword(),
                  label: "Password",
                  margin: const EdgeInsets.only(top: 20),
                  suffixIcon: IconButton(
                    onPressed: () => controller.passwordCubit.onUpdateData(!state.data),
                    icon: Icon(
                        !state.data ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                        size: 20,
                        color: context.colors.primary),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
