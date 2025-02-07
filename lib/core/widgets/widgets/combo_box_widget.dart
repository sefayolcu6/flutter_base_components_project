import 'package:flutter/material.dart';
import 'package:pharma_net/constants/paddings/app_paddings.dart';

class AppComboBox extends StatefulWidget {
  final String? selectedValue;
  final Function(String a) newValue;
  final List<String> options;
  final String? Function(String?)? validator;
  const AppComboBox(
      {super.key,
      this.selectedValue,
      required this.options,
      required this.newValue,
      this.validator});

  @override
  State<AppComboBox> createState() => _AppComboBoxState();
}

class _AppComboBoxState extends State<AppComboBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingConstant.instance.appPaddingAll4,
      child: DropdownButtonFormField<String>(
        validator: widget.validator,
        value: widget.selectedValue,
        decoration: InputDecoration(
          hintText: "Seçiniz",
          labelText: 'Seçiniz',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
        ),
        icon: const Icon(Icons.arrow_drop_down),
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(color: Colors.black87),
        onChanged: (String? newValue) {
          widget.newValue(newValue ?? "");
        },
        items: widget.options.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
