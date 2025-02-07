import 'package:flutter/material.dart';
import 'package:flutter_base_components_project/core/widgets/colors/colors.dart';
import 'package:flutter_base_components_project/core/widgets/paddings/app_paddings.dart';

Container appModalBottomSheet(
    {required BuildContext context, required List<Widget> children}) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: ColorConstant.instance.white,
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20.0),
      ),
    ),
    child: Padding(
        padding: PaddingConstant.instance.appPaddingAll16,
        child: Column(mainAxisSize: MainAxisSize.min, children: children)),
  );
}



//  showModalBottomSheet(
//               builder: (context) => appModalBottomSheet(
//                     context: context,
//                     children: [
//                       Text("datdfdfdfdfa"),
//                       Text("datdfdfdfdfa"),
//                       Text("datdfdfdfdfa"),
//                       Text("datdfdfdfdfa"),
//                       Text("datdfdfdfdfa"),
//                       Text("datdfdfdfdfa"),
//                     ],
//                   ),
//               context: context);