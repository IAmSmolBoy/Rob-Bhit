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

    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    Color appBarColor = color ?? colorScheme.primary;

    return AppBar(
      title: Text(title),
      backgroundColor: colorScheme.background,
      elevation: 5,
      iconTheme: IconThemeData(
        color: appBarColor,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      titleTextStyle: TextStyle(
        color: appBarColor,
        fontWeight: FontWeight.bold,
        fontSize: 20
      ),
      leading: icon != null ?
        Icon(
          icon,
          color: appBarColor
        ) :
        null,
      actions: settings ?
        [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: appBarColor
            ),
            onPressed: () {
              slideUpTo(
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