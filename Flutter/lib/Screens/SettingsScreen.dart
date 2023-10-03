import 'package:flutter/material.dart';
import 'package:rob_bhit/Screens/LoginScreen.dart';
import 'package:rob_bhit/Screens/SettingsForm.dart';
import 'package:rob_bhit/Widgets/AppBar.dart';
import 'package:rob_bhit/classes/Alarm.dart';
import 'package:rob_bhit/classes/AppColors.dart';
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

  void toggleLightMode(value) {

    setState(() {


      lightMode.set(value);

    });

    prefs.setBool("lightMode", value);

  }

  // Settings
  void setWarningAlarm(double val) {
    
    setState(() {
      
      alarms.editAlarm(
        0,
        0,
        Alarm("Warning", val)
      );
      
    });
    
  }
  void setAlarmAlarm(double val) {
    
    setState(() {
      
      alarms.editAlarm(
        0,
        1,
        Alarm("Alarm", val)
      );
      
    });
    
  }
  void setDueAlarm(double val) {
    
    setState(() {
      
      alarms.editAlarm(
        0,
        2,
        Alarm("Due for replacement", val)
      );
      
    });
    
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: const MainAppBar(
        title: "Settings",
        settings: false,
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('Robot'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(Icons.warning, color: AppColors.oeeBar3),
                title: Text('${alarms.value[0].alarms[0].msg} Alarm'),
                value: Text('${alarms.value[0].alarms[0].turns}'),
                onPressed:
                  (context) => fadeTo(
                    context: context,
                    screen: SettingsForm(
                      labelText: "${alarms.value[0].alarms[0].msg} Alarm",
                      prefixIcon: Icons.warning,
                      keyboard: TextInputType.number,
                      currVal: "${alarms.value[0].alarms[0].turns}",
                      set: (String? val) {
                        setWarningAlarm(double.tryParse(val ?? "0.0") ?? 0.0);
                      },
                    )
                  ),
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.warning, color: AppColors.darkOrange),
                title: Text('${alarms.value[0].alarms[1].msg} Alarm'),
                value: Text('${alarms.value[0].alarms[1].turns}'),
                onPressed:
                  (context) => fadeTo(
                    context: context,
                    screen: SettingsForm(
                      labelText: "${alarms.value[0].alarms[1].msg} Alarm",
                      prefixIcon: Icons.warning,
                      keyboard: TextInputType.number,
                      currVal: "${alarms.value[0].alarms[1].turns}",
                      set: (String? val) {
                        setAlarmAlarm(double.tryParse(val ?? "0.0") ?? 0.0);
                      },
                    )
                  ),
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.warning, color: AppColors.red),
                title: Text('${alarms.value[0].alarms[2].msg} Alarm'),
                value: Text('${alarms.value[0].alarms[2].turns}'),
                onPressed:
                  (context) => fadeTo(
                    context: context,
                    screen: SettingsForm(
                      labelText: "${alarms.value[0].alarms[2].msg} Alarm",
                      prefixIcon: Icons.warning,
                      keyboard: TextInputType.number,
                      currVal: "${alarms.value[0].alarms[2].turns}",
                      set: (String? val) {
                        setDueAlarm(double.tryParse(val ?? "0.0") ?? 0.0);
                      },
                    )
                  ),
              ),
            ],
          ),
          SettingsSection(
            title: const Text('Common'),
            tiles: <SettingsTile>[
              SettingsTile.switchTile(
                onToggle: toggleLightMode,
                initialValue: lightMode.value,
                leading: const Icon(Icons.light_mode),
                title: const Text('Light Mode'),
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.wifi),
                title: const Text("Server IP"),
                onPressed: 
                  (context) => fadeTo(
                    context: context,
                    screen: SettingsForm(
                      labelText: "ServerIP",
                      prefixIcon: Icons.wifi,
                      keyboard: TextInputType.text,
                      currVal: serverIP.value,
                      set: (String? val) {

                        serverIP.set(val ?? "0.0.0.0");

                      },
                    )
                  ),
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.exit_to_app),
                title: const Text("Sign Out"),
                onPressed: (context) {

                  prefs.remove("user");

                  slideReplacementDownTo(context: context, screen: const LoginScreen());

                },
              )
            ],
          ),
        ],
      )
    );
  }
}