import 'package:flutter/material.dart';
import 'package:pharma_net/constants/widgets/textformfield_widget.dart';

class ShowTimePicker extends StatelessWidget {
  final TextEditingController textEditingController;
  final FocusNode focusNode;
  const ShowTimePicker({
    super.key,
    required this.textEditingController,
    required this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
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
