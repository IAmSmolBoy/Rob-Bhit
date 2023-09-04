import 'package:flutter/material.dart';
import 'package:rob_bhit/Widgets/CardContent.dart';
import 'package:rob_bhit/utils/helper.dart';

class HomeCard extends StatelessWidget {

  const HomeCard({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.onTap,
  });

  final String image, title, subTitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {

    final String imgURL = "images/$image.png";

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                imgURL,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
              CardContent(
                title: title,
                subtitle: subTitle,
                titleColor: color,
                subtitleColor: color
              ),
              Container(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}