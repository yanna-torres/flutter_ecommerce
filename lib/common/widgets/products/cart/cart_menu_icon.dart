import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class TCartMenuIcon extends StatelessWidget {
  const TCartMenuIcon({
    super.key,
    required this.onPressed,
    required this.iconColor,
  });

  final VoidCallback? onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Badge(
        backgroundColor: TColors.black,
        label: const Text(
          '3',
          style: TextStyle(color: TColors.white),
        ),
        child: Icon(
          Iconsax.shopping_bag,
          color: iconColor,
        ),
      ),
      onPressed: onPressed,
    );
  }
}