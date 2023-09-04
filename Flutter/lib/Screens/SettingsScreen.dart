import 'package:flutter/material.dart';
import 'package:rob_bhit/Screens/SettingsForm.dart';
import 'package:rob_bhit/Widgets/AppBar.dart';
import 'package:rob_bhit/utils/helper.dart';
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


  // Settings
  int turnAlarm = prefs.getInt('turnAlarm') ?? 0;

  void setTurnAlarm(val) {
    setState(() {
      turnAlarm = val;
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
            title: Text('Robot'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(Icons.replay_circle_filled_outlined),
                title: const Text('Turns Alarm'),
                value: Text('$turnAlarm'),
                onPressed:
                  (context) => fadeTo(
                    context: context,
                    screen: SettingsForm(
                      labelText: "Turns Alarm",
                      prefixIcon: Icons.replay_circle_filled_outlined,
                      keyboard: TextInputType.number,
                      currVal: "$turnAlarm",
                      set: (val) {
                        final int submittedVal = int.tryParse(val) ?? 0;

                        setTurnAlarm(submittedVal);
                        prefs.setInt("turnAlarm", submittedVal);
                      },
                    )
                  ),
              ),
              SettingsTile.switchTile(
                onToggle: toggle,
                initialValue: test,
                leading: Icon(Icons.format_paint),
                title: Text('Enable custom theme'),
              ),
            ],
          ),
          SettingsSection(
            title: Text('Common'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text('Language'),
                value: Text('English'),
                onPressed:
                (context) => fadeTo(
                  context: context,
                  screen: SettingsForm(
                    set: (val) => prefs.setInt("", val),
                    labelText: "",
                    prefixIcon: Icons.circle
                  )
                ),
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