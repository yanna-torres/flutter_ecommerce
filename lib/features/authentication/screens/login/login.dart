import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/styles/spacing_styles.dart';
import 'package:flutter_ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:flutter_ecommerce/features/authentication/screens/login/social_buttons.dart';
import 'package:flutter_ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter_ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter_ecommerce/utils/constants/sizes.dart';
import 'package:flutter_ecommerce/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppbarHeight,
          child: Column(
            children: [
              // Logo, title, and subtitle
              TLoginHeader(),

              // Form
              TLoginForm(),

              // Social login
              TFormDivider(
                dividerText: TTexts.orSignInWith,
              ),
              SizedBox(height: TSizes.spaceBtwSections),

              // Social login buttons
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
