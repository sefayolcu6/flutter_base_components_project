import 'package:flutter/material.dart';
import 'package:flutter_base_components_project/core/helper_components/custom_colors.dart';
import 'package:flutter_base_components_project/core/helper_components/custom_paddings.dart';

class CustomSwitch extends StatefulWidget {
  final bool isActive;
  final bool Function(bool) onChanged;
  const CustomSwitch({
    super.key,
    required this.isActive,
    required this.onChanged,
  });

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: CustomPaddingConstant.instance.appPaddingAll2,
      child: Switch(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          focusNode: FocusNode(),
          activeTrackColor: CustomColorConstant.instance.amber,
          value: widget.isActive,
          activeColor: Colors.red,
          onChanged: widget.onChanged),
    );
  }
}
