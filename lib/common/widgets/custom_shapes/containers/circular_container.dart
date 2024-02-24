import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.backgroundColor = TColors.white,
    this.child,
    this.padding = 0,
    this.margin,
  });

  final double? width, height;
  final double radius;
  final double padding;
  final EdgeInsetsGeometry? margin;
  final Color backgroundColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
