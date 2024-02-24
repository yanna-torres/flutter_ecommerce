import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:flutter_ecommerce/common/widgets/texts/section_header.dart';
import 'package:flutter_ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter_ecommerce/common/widgets/custom_shapes/containers/primary_header.dart';
import 'package:flutter_ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimartyHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // Search bar
                  TSearchContainer(hintText: 'Search in store...'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),
                        // Categories list
                        THomeCategories()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
