import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {

  const LoginButton({
    super.key,
    required this.side,
    required this.fixedSize,
    required this.onClick
  });

  final BorderSide side;
  final Size fixedSize;
  final void Function()? onClick;

  @override
  Widget build(BuildContext context) {

    return OutlinedButton(
      onPressed: onClick,
      style: OutlinedButton.styleFrom(
        side: side,
        fixedSize: fixedSize
      ),
      child: const Text("Login")
    );
  }
}