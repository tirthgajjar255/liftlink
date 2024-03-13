import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../features/authentication/screens/login/login.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_functions.dart';
import '../styles/spacing_styles.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
        required this.image,
        required this.title,
        required this.subTitle,
        this.onPressed});

  final String image, title, subTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: LSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Image
              Image(
                image: AssetImage(image),
                width: LHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: LSizes.spaceBtwSections),

              ///Title & SubTitle
              Text(title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: LSizes.spaceBtwSections),

              Text(subTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: LSizes.spaceBtwSections),

              ///Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: const Text("Continue"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}