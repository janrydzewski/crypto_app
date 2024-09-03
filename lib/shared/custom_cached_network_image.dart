import 'package:cached_network_image/cached_network_image.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

// Custom cached network image
class CustomCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final BoxFit? boxFit;
  final AlignmentGeometry? align;
  final Widget? errorWidget;
  final double? width;
  final double? height;

  const CustomCachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.boxFit,
    this.align,
    this.errorWidget,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: boxFit ?? BoxFit.cover,
            alignment: align ?? Alignment.center,
          ),
        ),
      ),
      placeholder: (context, url) => LoadingAnimationWidget.threeArchedCircle(
          color: context.primaryColor, size: 30),
      errorWidget: (context, url, error) =>
          errorWidget ??
          const Icon(
            Icons.error,
            size: 30,
          ),
    );
  }
}
