import 'package:flutter/material.dart';
import 'package:rob_bhit/Widgets/CardContent.dart';
import 'package:rob_bhit/utils/helper.dart';

class GridCard extends StatelessWidget {

  const GridCard({
    super.key,
    required this.onTap,
    required this.title,
    required this.subTitle,
  });

  final void Function() onTap;
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {

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
            vertical: 10
          ),
          child: Center(
            child: CardContent(
              title: title,
              subtitle: subTitle,
              titleColor: color,
              subtitleColor: color
              // titleSize: 17,
              // subTitleSize: 12.5,
            ),
          ) 
        ),
      ),
    );

  }

}