import 'package:flutter/material.dart';
import 'package:rob_bhit/Widgets/MainLayout.dart';
import 'package:rob_bhit/utils/navigation.dart';

class ScreenManager extends StatefulWidget {
  const ScreenManager({ super.key });

  @override
  State<ScreenManager> createState() => _ScreenManagerState();
}

class _ScreenManagerState extends State<ScreenManager> with SingleTickerProviderStateMixin {

  int pageIndex = 2;
  late TabController _tabController;

  @override
  void initState() {

    super.initState();

    _tabController = TabController(
      initialIndex: 2,
      vsync: this,
      length: screenDataList.length
    );

    _tabController.addListener(() {
      setState(() {
        pageIndex = _tabController.index;
      });
    });

  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void setPage(int i) {
    setState(() {
      pageIndex = i;
    });

    _tabController.animateTo(i);
  }

  
  @override
  Widget build(BuildContext context) {

    return MainLayout(
      title: screenDataList[pageIndex].title,
      icon: screenDataList[pageIndex].icon,
      pageIndex: pageIndex,
      onItemSelected: setPage,
      tabController: _tabController,
    );

  }

}