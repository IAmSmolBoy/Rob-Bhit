import 'package:flutter/material.dart';
import 'package:rob_bhit/Screens/SettingsForm.dart';
import 'package:rob_bhit/Widgets/AppBar.dart';
import 'package:rob_bhit/utils/navigation.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsScreen extends StatefulWidget {

  const SettingsScreen({
    super.key,
    selected
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();

}

class _SettingsScreenState extends State<SettingsScreen> {

  bool test = true;

  void toggle(value) {
    setState(() {
      test = value;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const MainAppBar(
        title: "Settings"
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('Common'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text('Language'),
                value: Text('English'),
                onPressed: (context) => fadeTo(context: context, screen: SettingsForm()),
              ),
              SettingsTile.switchTile(
                onToggle: toggle,
                initialValue: test,
                leading: Icon(Icons.format_paint),
                title: Text('Enable custom theme'),
              ),
            ],
          ),
        ],
      )
    );
  }
}