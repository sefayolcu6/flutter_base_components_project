import 'package:flutter/material.dart';
import 'package:pharma_net/constants/utils.dart';
import 'package:pharma_net/constants/widgets/textformfield_widget.dart';

class AppDateTimePicker extends StatefulWidget {
  final TextEditingController textEditingController;

  const AppDateTimePicker({super.key, required this.textEditingController});

  @override
  State<AppDateTimePicker> createState() => _AppDateTimePickerState();
}

class _AppDateTimePickerState extends State<AppDateTimePicker> with Utils {
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
    return AppTextFormField(
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
