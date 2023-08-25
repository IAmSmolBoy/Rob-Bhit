import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {

  const SignUpButton({
    super.key,
    required this.side,
    required this.fixedSize,
    this.signUpPage,
    this.signUp
  });

  final BorderSide side;
  final Size fixedSize;
  final void Function()? signUpPage;
  final void Function()? signUp;

  @override
  Widget build(BuildContext context) {

    void register() {
      if (signUpPage != null) {
        signUpPage!();
      }
      else if (signUp != null) {
        signUp!();
      }
    }
  
    return ElevatedButton(
      onPressed: register,
      style: ElevatedButton.styleFrom(
        side: side,
        fixedSize: fixedSize
      ),
      child: const Text("Sign Up")
    );
  }
}