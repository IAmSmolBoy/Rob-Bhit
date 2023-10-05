import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:rob_bhit/utils/navigation.dart';

class BottomNavbar extends StatelessWidget {

  const BottomNavbar({
    super.key,
    required this.selected,
    required this.onItemSelected
  });

  final int selected;
  final void Function(int) onItemSelected;

  @override
  Widget build(BuildContext context) {

    // return CurvedNavigationBar(
    //   backgroundColor: Colors.blueAccent,
    //   items: <Widget>[
    //     Icon(
    //       FontAwesomeIcons.gaugeSimpleHigh,
    //       size: 30
    //     ),
    //     Icon(Icons.list, size: 30),
    //     Icon(Icons.compare_arrows, size: 30),
    //   ],
    //   onTap: (index) {
        
    //   },
    // );

    return BottomNavyBar(
      selectedIndex: selected,
      showElevation: true, // use this to remove appBar's elevation
      onItemSelected: onItemSelected,
      items: screenDataList.map((data) => BottomNavyBarItem(
        icon: Icon(data.icon),
        title: Text(data.title),
        activeColor: data.color,
      )).toList(),
    );

  }

}