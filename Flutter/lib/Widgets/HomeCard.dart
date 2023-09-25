import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {

  const HomeCard({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    required this.color
  });

  final String title;
  final Color color;
  final IconData icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {

    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: colorScheme.background,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.background,
          padding: EdgeInsets.zero,
        ),
        onPressed: onTap, 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: color,
              size: 40,
            ),
            Text(title,
              style: TextStyle(
                fontSize: 12, 
                color: colorScheme.onBackground,
                fontWeight: FontWeight.bold
              ),
            ),
          ]
        )
      ),
    );
  }
}