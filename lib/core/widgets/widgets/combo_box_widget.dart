import 'package:flutter/material.dart';
import 'package:flutter_base_components_project/core/helper_components/custom_paddings.dart';

class CustomComboBox extends StatefulWidget {
  final String? selectedValue;
  final Function(String a) newValue;
  final List<String> options;
  final String? Function(String?)? validator;
  const CustomComboBox(
      {super.key,
      this.selectedValue,
      required this.options,
      required this.newValue,
      this.validator});

  @override
  State<CustomComboBox> createState() => _CustomComboBoxState();
}

class _CustomComboBoxState extends State<CustomComboBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomPaddingConstant.instance.appPaddingAll4,
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
