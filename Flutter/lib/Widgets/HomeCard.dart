import 'package:flutter/material.dart';

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
    final Color priColor = Theme.of(context).colorScheme.primary;

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
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15
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
                  ],
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