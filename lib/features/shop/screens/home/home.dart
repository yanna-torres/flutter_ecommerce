import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shapes/containers/primary_header.dart';
import 'package:flutter_ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flutter_ecommerce/features/shop/screens/home/widgets/home_slider.dart';
import 'package:flutter_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            const TPrimartyHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // Search bar
                  TSearchContainer(hintText: 'Search in store...'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // Categories
                  THomeCategories(),
                ],
              ),
            ),

            // Body
            Container(
              margin: const EdgeInsets.all(TSizes.defaultSpace),
              child: const TPromoSlider(
                banners: [
                  TImages.promoBanner1,
                  TImages.promoBanner2,
                  TImages.promoBanner3,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
