import 'package:flutter/material.dart';

class CustomBottomNavigationMenuBar extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  final void Function(int)? onTap;
  final int currentIndex;
  const CustomBottomNavigationMenuBar({
    super.key,
    required this.items,
    this.onTap,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: currentIndex, onTap: onTap, items: items);
  }
}

// class CustomBottomBar extends StatelessWidget {
//   final List<Widget> iconButtoniList;
//   const CustomBottomBar({
//     super.key,
//     required this.iconButtoniList,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BottomSheet(
// builder: (context) {
  
// },onClosing: ,



//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       height: 60,
//       shape: const CircularNotchedRectangle(),
//       notchMargin: 5,
//       child: Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: iconButtoniList),
//     );
//   }
// }
