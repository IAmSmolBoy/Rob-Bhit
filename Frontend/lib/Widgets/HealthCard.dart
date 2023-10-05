import 'package:flutter/material.dart';
import 'package:rob_bhit/Widgets/CardContent.dart';

class HealthCard extends StatelessWidget {

  const HealthCard({
    super.key,
    required this.image,
    required this.title,
    this.onTap,
  });

  final String image, title;
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CardContent(
                title: title,
                // subtitle: subTitle,
                titleColor: Theme.of(context).colorScheme.onPrimary,
                // subtitleColor: Colors.black,
                // titleSize: 17,
                // subTitleSize: 12.5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20
                ),
                child: Image.asset(
                  imgURL,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }

}