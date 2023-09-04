import 'package:flutter/material.dart';

class TransparentImageCard extends StatelessWidget {

  const TransparentImageCard({
    Key? key,
    this.width,
    this.height,
    this.contentMarginTop,
    this.borderRadius = 6,
    this.contentPadding,
    required this.imageProvider,
    this.tags,
    this.title,
    this.description,
    this.footer,
    this.startColor,
    this.endColor,
    this.tagSpacing,
    this.tagRunSpacing,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double? contentMarginTop;
  final double borderRadius;
  final double? tagSpacing;
  final double? tagRunSpacing;
  final EdgeInsetsGeometry? contentPadding;
  final ImageProvider imageProvider;
  final List<Widget>? tags;
  final Color? startColor;
  final Color? endColor;
  final Widget? title;
  final Widget? description;
  final Widget? footer;

  @override
  Widget build(BuildContext context) {

    final Widget content = ImageCardContent(
      contentPadding: contentPadding,
      tags: tags,
      title: title,
      footer: footer,
      description: description,
      tagSpacing: tagSpacing,
      tagRunSpacing: tagRunSpacing,
    );

    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: ShaderMask(
            shaderCallback: (bound) {
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  startColor ?? const Color(0xff575757).withOpacity(0),
                  endColor ?? const Color(0xff000000),
                ],
                //tileMode: TileMode.,
              ).createShader(bound);
            },
            blendMode: BlendMode.srcOver,
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
                //tileMode: TileMode.,
              ),
              padding: EdgeInsets.only(top: contentMarginTop ?? 100),
              child: content,
            ),
          ),
        ),
        Positioned(
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius),
              color: Colors.transparent,
            ),
            padding: EdgeInsets.only(top: contentMarginTop ?? 100),
            child: content,
          ),
        ),
      ],
    );

  }

}

class ImageCardContent extends StatelessWidget {
  
  const ImageCardContent({
    Key? key,
    this.contentPadding,
    this.tags,
    this.title,
    this.description,
    this.footer,
    this.tagSpacing,
    this.tagRunSpacing,
  }) : super(key: key);

  final EdgeInsetsGeometry? contentPadding;
  final List<Widget>? tags;
  final double? tagSpacing;
  final double? tagRunSpacing;
  final Widget? title;
  final Widget? description;
  final Widget? footer;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: contentPadding ??
          const EdgeInsets.only(top: 8, bottom: 12, left: 8, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (tags != null)
            Wrap(
              spacing: tagSpacing ?? 12,
              runSpacing: tagRunSpacing ?? 10,
              children: tags!,
            ),
          if (title != null || description != null)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (title != null) title!,
                  if (title != null && description != null)
                    const SizedBox(
                      height: 2,
                    ),
                  if (description != null) description!,
                ],
              ),
            ),
          if (footer != null)
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: footer!,
            ),
        ],
      ),
    );

  }
  
}