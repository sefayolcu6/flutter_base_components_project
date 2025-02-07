import 'package:flutter/material.dart';

class BottomNavigationMenuBar extends StatelessWidget {
  final List<Widget> iconButtoniList;
  const BottomNavigationMenuBar({
    super.key,
    required this.iconButtoniList,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      shape: const CircularNotchedRectangle(),
      notchMargin: 5,
      child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: iconButtoniList),
    );
  }
}




//Menü şeklinde bottomNavigationBar için

      // floatingActionButton: FloatingActionButton(
      //   shape: CircleBorder(),
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomNavigationMenuBar(
      //   iconButtoniList: <Widget>[
      //     IconButton(
      //       icon: const Icon(
      //         Icons.menu,
      //         color: Colors.black,
      //       ),
      //       onPressed: () {},
      //     ),
      //     IconButton(
      //       icon: const Icon(
      //         Icons.search,
      //         color: Colors.black,
      //       ),
      //       onPressed: () {},
      //     ),
      //     IconButton(
      //       icon: const Icon(
      //         Icons.print,
      //         color: Colors.black,
      //       ),
      //       onPressed: () {},
      //     ),
      //     IconButton(
      //       icon: const Icon(
      //         Icons.people,
      //         color: Colors.black,
      //       ),
      //       onPressed: () {},
      //     ),
      //   ],
      // ),