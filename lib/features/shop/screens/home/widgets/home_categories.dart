import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/image_text/vertical_image_text.dart';
import 'package:flutter_ecommerce/utils/constants/image_strings.dart';
import 'package:flutter_ecommerce/common/widgets/texts/section_header.dart';
import 'package:flutter_ecommerce/utils/constants/colors.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: TSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TSectionHeading(
            title: 'Popular Categories',
            showActionButton: false,
            textColor: TColors.white,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          // Categories list
          SizedBox(
            height: 80,
            child: ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return TVerticalImageText(
                  image: TImages.sportIcon,
                  title: 'Sports',
                  onTap: () {},
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
