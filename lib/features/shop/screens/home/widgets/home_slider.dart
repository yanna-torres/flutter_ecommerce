import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:flutter_ecommerce/common/widgets/images/rounded_image.dart';
import 'package:flutter_ecommerce/features/shop/controllers/home_controller.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true,
            onPageChanged: (index, reason) =>
                controller.updatePageIndicator(index),
          ),
          items: banners
              .map(
                (e) => TRoundedImage(
                  image: e,
                  onPressed: () {},
                ),
              )
              .toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < banners.length; i++)
                TCircularContainer(
                  width: 20,
                  height: 4,
                  backgroundColor: controller.carrouselCurrentIndex.value == i
                      ? TColors.primary
                      : TColors.grey,
                  margin: const EdgeInsets.only(right: 10),
                ),
            ],
          ),
        )
      ],
    );
  }
}
