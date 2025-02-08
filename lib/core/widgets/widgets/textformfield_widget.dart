import 'package:flutter/material.dart';
import 'package:flutter_base_components_project/core/helper_components/custom_paddings.dart';

class CustomTextFormField extends StatefulWidget {
  final String label;
  final FocusNode? focusNode;
  final bool? obscureText;
  final TextEditingController controller;
  final VoidCallback? onTap;
  final Widget? prefixIcon;
  final bool? readOnly;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    Key? key,
    required this.label,
    this.focusNode,
    this.obscureText,
    required this.controller,
    this.onTap,
    this.prefixIcon,
    this.readOnly,
    this.validator,
  }) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomPaddingConstant.instance.appPaddingAll4,
      child: TextFormField(
        validator: widget.validator,
        onTap: widget.onTap,
        focusNode: widget.focusNode,
        readOnly: widget.readOnly ?? false,
        textAlign: TextAlign.start,
        obscureText: widget.obscureText ?? false,
        controller: widget.controller,
        decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          suffixIcon: IconButton(
            onPressed: () {
              widget.controller.clear();
              widget.focusNode?.unfocus();
            },
            icon: const Icon(Icons.close),
          ),
          labelText: widget.label,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0),
            ),
          ),
        ),
      ),
    );
  }
}
