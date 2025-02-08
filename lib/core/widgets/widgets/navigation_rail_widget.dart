import 'package:flutter/material.dart';

class CustomNavigationRail extends StatelessWidget {
  final List<NavigationRailDestination> items;
  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;
  final double railWidth;
  final Color? backgroundColor;
  final IconThemeData? selectedIconTheme;
  final IconThemeData? unselectedIconTheme;
  final bool showDivider;

  const CustomNavigationRail({
    Key? key,
    required this.items,
    required this.selectedIndex,
    required this.onDestinationSelected,
    this.railWidth = 72.0, // Varsayılan genişlik
    this.backgroundColor,
    this.selectedIconTheme,
    this.unselectedIconTheme,
    this.showDivider = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          MediaQuery.of(context).size.height, // 🔹 Ekran yüksekliğini alıyor
      child: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: selectedIndex,
            onDestinationSelected: onDestinationSelected,
            labelType: NavigationRailLabelType.all,
            destinations: items,
          ),
          if (showDivider) _appVerticalDivider(),
        ],
      ),
    );
  }

  Widget _appVerticalDivider() {
    return const VerticalDivider(
      width: 1,
      thickness: 1,
      color: Colors.grey,
    );
  }
}
