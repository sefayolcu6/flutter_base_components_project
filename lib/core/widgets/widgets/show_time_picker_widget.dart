import 'package:flutter/material.dart';
import 'package:flutter_base_components_project/core/widgets/widgets/textformfield_widget.dart';

class CustomShowTimePicker extends StatelessWidget {
  final TextEditingController textEditingController;
  final FocusNode focusNode;
  const CustomShowTimePicker({
    super.key,
    required this.textEditingController,
    required this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      label: "Saat",
      controller: textEditingController,
      focusNode: focusNode,
      readOnly: true,
      onTap: () {
        showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        ).then((selectedTime) {
          if (selectedTime != null && selectedTime != TimeOfDay.now()) {
            textEditingController.text = selectedTime.format(context);
          }
        });
      },
    );
  }
}
