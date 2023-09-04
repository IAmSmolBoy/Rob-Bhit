import 'package:flutter/material.dart';
import 'package:rob_bhit/Screens/SettingsScreen.dart';
import 'package:rob_bhit/utils/navigation.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {

  const MainAppBar({
    super.key,
    required this.title,
    this.icon,
    this.settings = true,
    this.color,
  });

  final String title;
  final IconData? icon;
  final bool settings;
  final Color? color;

  @override
  Widget build(BuildContext context) {

    final Color priColor = Theme.of(context).colorScheme.primary;

    return AppBar(
      title: Text(title),
      backgroundColor: Colors.white,
      elevation: 5,
      iconTheme: IconThemeData(
        color: color ?? priColor,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      titleTextStyle: TextStyle(
        color: color ?? priColor,
        fontWeight: FontWeight.bold,
        fontSize: 20
      ),
      leading: icon != null ?
        Icon(
          icon,
          color: color ?? priColor
        ) :
        null,
      actions: settings ?
        [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: color ?? priColor
            ),
            onPressed: () {
              slideDownTo(
                context: context,
                screen: const SettingsScreen()
              );
            },
          )
        ] :
        null
    );

  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}