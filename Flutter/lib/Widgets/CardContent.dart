import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {

  const CardContent({
    super.key,
    required this.title,
    required this.subtitle,
    required this.titleColor,
    required this.subtitleColor,
    this.titleSize = 24,
    this.subTitleSize = 15,
  });

  final String title, subtitle;
  final double titleSize, subTitleSize;
  final Color titleColor, subtitleColor;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15
      ),
      child: Column(
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
          Container(height: 10),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: subTitleSize,
              color: subtitleColor,
            ),
          ),
        ],
      ),
    );

  }

}