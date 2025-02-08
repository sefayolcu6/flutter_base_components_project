import 'package:flutter/material.dart';
import 'package:flutter_base_components_project/core/widgets/widgets/choise_card_widget.dart';

class CustomChoiseCardRadioButtonWidget extends StatefulWidget {
  final String imageUrl;
  final String subtitle;
  final int radioButtonValue;
  final int groupValue;
  const CustomChoiseCardRadioButtonWidget(
      {super.key,
      required this.imageUrl,
      required this.subtitle,
      required this.radioButtonValue,
      required this.groupValue});

  @override
  State<CustomChoiseCardRadioButtonWidget> createState() =>
      _CustomChoiseCardRadioButtonWidgetState();
}

class _CustomChoiseCardRadioButtonWidgetState
    extends State<CustomChoiseCardRadioButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomChoiseCard(
          imageUrl: widget.imageUrl,
          
        ),
        Text(widget.subtitle),
        Radio<int>(
          value: widget.radioButtonValue,
          groupValue: widget.groupValue,
          onChanged: (value) {
            setState(() {
              print("Button value: $value");
            });
          },
        ),
      ],
    );
  }
}
