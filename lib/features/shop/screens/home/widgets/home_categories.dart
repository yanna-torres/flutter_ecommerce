import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/widgets/image_text/vertical_image_text.dart';
import 'package:flutter_ecommerce/utils/constants/image_strings.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}