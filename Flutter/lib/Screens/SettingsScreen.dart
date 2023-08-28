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

  // Future<Map<String, dynamic>> getData() async {
  //   Response response = await get(
  //     Uri(
  //       scheme: "http",
  //       host: dotenv.env['SERVERIP'],
  //       port: 5000,
  //       path: "/current/cobot"
  //     )
  //   );
    
  //   return json.decode(response.body);
  // }

  @override
  Widget build(BuildContext context) {

    // return FutureBuilder(
    //   future: getData(),
    //   builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
    //     if (snapshot.connectionState != ConnectionState.done) {
    //       // Return what ur user sees when loading
    //       return const Center(child: CircularProgressIndicator());
    //     }
    //     else if (snapshot.hasError) {
    //       // Return what ur user sees when an error occurs
    //       return Center(child: Text("Something went wrong. ${snapshot.error}"));
    //     }
    //     else if (snapshot.hasData) {
    //       // Return ur screen
    //       return Screen();
    //     }
    //     else {
    //       return Container();
    //     }
    //   }
    // );
    
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