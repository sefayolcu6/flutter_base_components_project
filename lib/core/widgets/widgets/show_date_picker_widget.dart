import 'package:flutter/material.dart';
import 'package:flutter_base_components_project/core/helper_components/utils.dart';
import 'package:flutter_base_components_project/core/widgets/widgets/textformfield_widget.dart';

class CustomDateTimePicker extends StatefulWidget {
  final TextEditingController textEditingController;

  const CustomDateTimePicker({super.key, required this.textEditingController});

  @override
  State<CustomDateTimePicker> createState() => _CustomDateTimePickerState();
}

class _CustomDateTimePickerState extends State<CustomDateTimePicker>
    with Utils {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime now = DateTime.now();

    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? now,
      firstDate: DateTime(now.year - 5),
      lastDate: DateTime(now.year + 5),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.blue,
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
        widget.textEditingController.text =
            onlyDateFormatForString(dateString: _selectedDate.toString());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        readOnly: true,
        onTap: () {
          setState(() {
            _selectDate(context);
          });
        },
        label: "Tarih",
        controller: widget.textEditingController);
  }
}
