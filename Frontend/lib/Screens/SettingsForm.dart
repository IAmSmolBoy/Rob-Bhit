import 'package:flutter/material.dart';
import 'package:rob_bhit/Widgets/AppBar.dart';
import 'package:rob_bhit/Widgets/MainTextField.dart';

class SettingsForm extends StatefulWidget {
  const SettingsForm({
    super.key,
    required this.set,
    required this.labelText,
    required this.prefixIcon,
    this.keyboard,
    this.currVal
  });

  final void Function(String? value) set;
  final String labelText;
  final IconData prefixIcon;
  final TextInputType? keyboard;
  final String? currVal;

  @override
  State<SettingsForm> createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {

  final _formKey = GlobalKey<FormState>();

  String? value;

  @override
  Widget build(BuildContext context) {

  void save() {
    if (_formKey.currentState?.validate() ?? false) {
      
      _formKey.currentState!.save();

      widget.set(value);

      Navigator.pop(context);

    }
  }

    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const MainAppBar(
        title: "Settings"
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: screenSize.height / 10,
          horizontal: screenSize.width / 10,
        ),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainTextField(
                labelText: widget.labelText,
                prefixIcon: widget.prefixIcon,
                onSaved: (val) => value = val,
                keyboard: widget.keyboard,
                defaultVal: widget.currVal,
              ),
              Container(height: screenSize.height / 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: save,
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Theme.of(context).colorScheme.primary),
                      // fixedSize: Size(screenSize.width, screenSize.height * .05)
                    ),
                    child: const Text("Save")
                  )
                ],
              )
            ],
          ),
        ),
      ) 
    );

  }

}