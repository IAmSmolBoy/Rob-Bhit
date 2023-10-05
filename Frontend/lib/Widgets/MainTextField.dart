import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainTextField extends StatelessWidget {

  const MainTextField({
    super.key,
    required this.labelText,
    required this.prefixIcon,
    this.visible = true,
    this.last = false,
    this.toggleVisibility,
    this.onSaved,
    this.onChanged,
    this.validator,
    this.keyboard,
    this.defaultVal
  });
  
  final String labelText;
  final IconData prefixIcon;
  final bool visible, last;
  final void Function()? toggleVisibility;
  final void Function(String?)? onSaved, onChanged;
  final String? Function(String?)? validator;
  final TextInputType? keyboard;
  final String? defaultVal;

  @override
  Widget build(BuildContext context) {

    Color priColor = Theme.of(context).colorScheme.primary;

    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      validator: validator,
      obscureText: !visible,
      initialValue: defaultVal,
      style: TextStyle(color: priColor),
      keyboardType: keyboard,
      textInputAction:
        last ?
          TextInputAction.done :
          TextInputAction.next,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: priColor),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: priColor)
        ),
        prefixIcon: Icon(
          prefixIcon,
          size: 14,
          color: priColor
        ),
        suffixIcon:
          toggleVisibility != null ?
            IconButton(
              onPressed: toggleVisibility,
              icon: Icon(
                size: 14,
                color: priColor,
                visible ? 
                  FontAwesomeIcons.eyeSlash :
                  FontAwesomeIcons.eye,
              ),
            ) :
            const SizedBox()
      ),
    );
  }
  
}