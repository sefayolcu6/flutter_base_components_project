import 'package:flutter/material.dart';
import 'package:flutter_base_components_project/core/helper_components/custom_colors.dart';

class CustomCheckBox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;

  const CustomCheckBox({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: CustomColorConstant.instance.primaryColor,
      value: widget.value,
      onChanged: widget.onChanged,
    );
  }
}

class CustomCheckBoxLabel extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;
  final String label;

  const CustomCheckBoxLabel({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.label,
  }) : super(key: key);

  @override
  _CustomCheckBoxLabelState createState() => _CustomCheckBoxLabelState();
}

class _CustomCheckBoxLabelState extends State<CustomCheckBoxLabel> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: CustomColorConstant.instance.primaryColor,
          value: widget.value,
          onChanged: widget.onChanged,
        ),
        Text(widget.label),
      ],
    );
  }
}

class CustomCheckBoxListTile extends StatefulWidget {
  final Widget title;
  final Widget subtitle;
  final bool value;
  final ValueChanged<bool?>? onChanged;

  const CustomCheckBoxListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomCheckBoxListTileState createState() => _CustomCheckBoxListTileState();
}

class _CustomCheckBoxListTileState extends State<CustomCheckBoxListTile> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: widget.title,
      subtitle: widget.subtitle,
      value: widget.value,
      onChanged: widget.onChanged,
    );
  }
}
