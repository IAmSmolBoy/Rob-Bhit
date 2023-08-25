import 'package:flutter/material.dart';

class LoginLayout extends StatefulWidget {

  const LoginLayout({
    super.key,
    required this.screenSize,
    required this.formKey,
    required this.children,
    required this.error
  });

  final Size screenSize;
  final GlobalKey<FormState> formKey;
  final List<Widget> children;
  final String error;

  @override
  State<LoginLayout> createState() => _LoginLayoutState();
}

class _LoginLayoutState extends State<LoginLayout> {

  String error = "";

  @override
  Widget build(BuildContext context) {

    EdgeInsetsGeometry padding = EdgeInsets.all(widget.screenSize.width * .12);
    
    ColorScheme  colors = Theme.of(context).colorScheme;
    Color backgroundColor = colors.background;
    Color errColor = colors.error;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          child: Padding(
            padding: padding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: padding,
                  child: Image.asset("images/Logo Icon.png")
                ),
                Text(
                  error,
                  style: TextStyle(
                    color: errColor,
                    fontSize: 1.5
                  )
                ),
                SizedBox(
                  height: widget.screenSize.height / 2,
                  child: Form(
                    key: widget.formKey,
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: widget.children
                    )
                  ),
                )
              ]
            )
          )
        )
      )
    );
  }
}