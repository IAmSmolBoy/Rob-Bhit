import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {

  const MainAppBar({
    super.key,
    required this.title,
    this.icon,
    this.settings
  });

  final String title;
  final IconData? icon;
  final void Function()? settings;

  @override
  Widget build(BuildContext context) {

    final Color priColor = Theme.of(context).colorScheme.primary;

    return AppBar(
      title: Text(title),
      backgroundColor: Colors.white,
      elevation: 5,
      iconTheme: IconThemeData(
        color: priColor, //change your color here
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      titleTextStyle: TextStyle(
        color: priColor,
        fontWeight: FontWeight.bold,
        fontSize: 20
      ),
      leading: icon != null ?
        Icon(
          icon,
          color: priColor
        ) :
        null,
      actions: settings != null ?
        [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: priColor
            ),
            onPressed: settings,
          )
        ] :
        null,
    );

  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}