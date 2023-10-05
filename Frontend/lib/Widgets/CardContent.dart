import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {

  const CardContent({
    super.key,
    required this.title,
    required this.titleColor,
    this.subtitleColor,
    this.subtitle,
    this.titleSize = 24,
    this.subTitleSize = 15,
    this.icon,
  });

  final String title;
  final String? subtitle;
  final double titleSize, subTitleSize;
  final Color titleColor;
  final Color? subtitleColor;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyle(
                  fontSize: titleSize,
                  fontWeight: FontWeight.bold,
                  color: titleColor,
                ),
              ),
              if (subtitle != null)
                Container(height: 10),
              if (subtitle != null)
                Text(
                  subtitle!,
                  style: TextStyle(
                    fontSize: subTitleSize,
                    color: subtitleColor,
                  ),
                ),
            ],
          ),
          if (icon != null)
            Icon(
              icon,
              color: titleColor,
              size: titleSize + subTitleSize,
            )
        ],
      )
      
    );

  }

}