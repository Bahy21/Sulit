part of 'search_widgets_imports.dart';

class BuildSearchField extends StatelessWidget {
  final FilterController controller;

  const BuildSearchField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GenericTextField(
      fieldTypes: FieldTypes.normal,
      type: TextInputType.text,
      action: TextInputAction.search,
      autoFocus: true,
      validate: (value) => value?.noValidate(),
      hint: "Search...",
      margin: const EdgeInsets.all(20),
    );
  }
}
