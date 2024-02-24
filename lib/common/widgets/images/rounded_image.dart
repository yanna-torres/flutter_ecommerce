import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    required this.image,
    this.isNetworkImage = false,
    this.width,
    this.height,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor = TColors.light,
    this.fit = BoxFit.contain,
    this.padding,
    this.onPressed,
    this.radius = TSizes.md,
  });

  final String image;
  final double? width, height;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: border,
        borderRadius: applyImageRadius ? BorderRadius.circular(radius) : null,
      ),
      child: isNetworkImage
          ? Image.network(
              image,
              fit: fit,
            )
          : Image.asset(
              image,
              fit: BoxFit.contain,
            ),
    );
  }
}
