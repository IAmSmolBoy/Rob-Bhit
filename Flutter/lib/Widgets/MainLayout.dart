import 'package:flutter/material.dart';
import 'package:rob_bhit/Screens/Home.dart';
import 'package:rob_bhit/Widgets/AppBar.dart';
import 'package:rob_bhit/Widgets/BottomNavbar.dart';
import 'package:rob_bhit/classes/ScreenData.dart';
import 'package:rob_bhit/utils/navigation.dart';

class MainLayout extends StatelessWidget {

  const MainLayout({
    super.key,
    required this.title,
    required this.pageIndex,
    required this.onItemSelected,
    required this.tabController,
    required this.icon,
    required this.color
  });

  final String title;
  final int pageIndex;
  final void Function(int) onItemSelected;
  final IconData icon;
  final TabController tabController;
  final Color color;
  
  @override
  Widget build(BuildContext context) {

    List<ScreenData> screens = screenDataList;
    screens[2] = ScreenData(
      title: "Home",
      screen: Home(
        setPage: onItemSelected
      ),
      icon: Icons.home
    );

    return DefaultTabController(
      length: screenDataList.length,
      child: Scaffold(
        body: TabBarView(
          controller: tabController,
          children:
            screenDataList
              .map((data) => data.screen)
              .toList()
        ),
        bottomNavigationBar: BottomNavbar(
          selected: pageIndex,
          onItemSelected: onItemSelected
        ),
        appBar: MainAppBar(
          title: title,
          icon: icon,
          color: color,
        ),
      )
    );

  }

}