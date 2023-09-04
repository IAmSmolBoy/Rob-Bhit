import 'package:flutter/material.dart';
import 'package:rob_bhit/Widgets/MainLayout.dart';
import 'package:rob_bhit/utils/helper.dart';
import 'package:rob_bhit/utils/navigation.dart';

class ScreenManager extends StatefulWidget {
  const ScreenManager({ super.key });

  @override
  State<ScreenManager> createState() => _ScreenManagerState();
}

class _ScreenManagerState extends State<ScreenManager> with SingleTickerProviderStateMixin {

  int pageIndex = 2;
  late TabController _tabController;

  void setPage(int i) {
    setState(() {
      pageIndex = i;
    });

    _tabController.animateTo(i);
    color = screenDataList[i].color;
  }

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
        color = screenDataList[_tabController.index].color;
        pageIndex = _tabController.index;
      });
    });

  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {

    return StreamBuilder(
      stream: getJointTurns(),
      builder: (context, snapshot) {

        // String msg = "";

        // if (snapshot.hasError) {
        //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
        // }
        
        

        // setState(() {
        //   turns
        // });

        return MainLayout(
          title: screenDataList[pageIndex].title,
          icon: screenDataList[pageIndex].icon,
          color: screenDataList[pageIndex].color,
          pageIndex: pageIndex,
          onItemSelected: setPage,
          tabController: _tabController,
        );

      },
    );

  }

}