import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:uhdpedia/utils/constants/sizes.dart';
import 'package:uhdpedia/utils/helpers/helper_functions.dart';
import 'package:uhdpedia/common/styles/spacing_padding_sizes.dart';

class SimpleScreen extends StatelessWidget {
  const SimpleScreen({
    super.key,
    required this.buttonText,
    required this.image,
    required this.subtitle,
    required this.title,
  });

  final String image, title, subtitle, buttonText;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: KSpacingPaddingSizes.paddingWithAppBarHeight,
            child: Column(
              children: [
                Lottie.asset(
                  image,
                  width: KHelperFunctions.screenWidth() * 0.6,
                ),
                const SizedBox(height: KSizes.spaceBetweenSections),
                Text(title,
                    textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineLarge),
                const SizedBox(height: KSizes.spaceBetweenItems),
                Text(subtitle,
                    textAlign: TextAlign.center, style: Theme.of(context).textTheme.labelMedium),
                const SizedBox(height: KSizes.spaceBetweenSections),
                // SimpleButton(
                //   backgroundColor: KColors.primary,
                //   onPressed: () => AuthenticationRepository.instance.screenRedirect(),
                //   text: buttonText,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
