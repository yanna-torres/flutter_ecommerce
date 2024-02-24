import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';

class TPrimartyHeaderContainer extends StatelessWidget {
  const TPrimartyHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(0.0),
        color: TColors.primary,
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                  backgroundColor: TColors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                  backgroundColor: TColors.white.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
