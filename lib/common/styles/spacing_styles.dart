import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';

class TSpacingStyle {
  TSpacingStyle._();

  static const EdgeInsetsGeometry paddingWithAppbarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    left: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
  );
}
