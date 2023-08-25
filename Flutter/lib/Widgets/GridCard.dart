import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {

  const GridCard({
    super.key,
    required this.onTap,
    required this.title,
    required this.subTitle,
  });

  final Function() onTap;
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {

    final Color priColor = Theme.of(context).colorScheme.primary;

    

    return GestureDetector(
      onTap: onTap,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: priColor,
                ),
              ),
              Container(height: 10),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 15,
                  color: priColor,
                ),
              ),
              Container(height: 5),
            ],
          ),
        ),
      ),
    );

  }

}