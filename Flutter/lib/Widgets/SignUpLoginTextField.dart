import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpLoginTextField extends StatelessWidget {

  const SignUpLoginTextField({
    super.key,
    required this.labelText,
    required this.color,
    required this.prefixIcon,
    this.visible = true,
    this.toggleVisibility,
    this.onSaved,
    this.onChanged,
    this.validator,
    this.last = false
  });
  
  final String labelText;
  final Color color;
  final IconData prefixIcon;
  final bool visible, last;
  final void Function()? toggleVisibility;
  final void Function(String?)? onSaved, onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      validator: validator,
      obscureText: !visible,
      style: TextStyle(color: color),
      textInputAction:
        last ?
          TextInputAction.done :
          TextInputAction.next,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: color),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: color)
        ),
        prefixIcon: Icon(
          prefixIcon,
          size: 14,
          color: color
        ),
        suffixIcon:
          toggleVisibility != null ?
            IconButton(
              onPressed: toggleVisibility,
              icon: Icon(
                size: 14,
                color: color,
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