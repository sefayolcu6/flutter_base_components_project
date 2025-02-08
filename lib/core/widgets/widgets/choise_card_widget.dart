import 'package:flutter/material.dart';
import 'package:flutter_base_components_project/core/helper_components/custom_colors.dart';
import 'package:flutter_base_components_project/core/helper_components/custom_paddings.dart';
import 'package:flutter_base_components_project/core/helper_components/utils.dart';

class CustomChoiseCard extends StatefulWidget {
  final String? imageUrl;
  final Widget? body;
  const CustomChoiseCard({
    super.key,
    this.imageUrl,
    this.body,
  });

  @override
  State<CustomChoiseCard> createState() => _CustomChoiseCardState();
}

class _CustomChoiseCardState extends State<CustomChoiseCard> with Utils {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(
          color: CustomColorConstant.instance.primaryColor,
          width: 2.0,
        ),
      ),
      child: Container(
        // height: screenWidth(context) * 0.3,
        width: screenWidth(context) * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: CustomColorConstant.instance.primaryColor.withOpacity(0.1),
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: widget.imageUrl != null
                ? Image.asset(
                    errorBuilder: (context, error, stackTrace) {
                      return Padding(
                        padding: CustomPaddingConstant.instance.appPaddingAll8,
                        child: Row(
                          spacing: 5,
                          children: [
                            Icon(Icons.error),
                            Text("Resim Bulunamadı"),
                          ],
                        ),
                      );
                    },
                    widget.imageUrl!,
                    fit: BoxFit.fill,
                  )
                : widget.body),
      ),
    );
  }
}
