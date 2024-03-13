import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/success_screen/success_screen.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../login/login.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          actions: [
            IconButton(
                onPressed: () => Get.offAll(() => const LoginScreen()),
                icon: const Icon(
                  CupertinoIcons.clear,
                  color: Colors.white,
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///Image
                Image(
                  image: const AssetImage(LImages.deliveredEmailIllustration),
                  width: LHelperFunctions.screenWidth() * 0.6,
                ),
                const SizedBox(height: LSizes.spaceBtwSections),

                ///Title & SubTitle
                Text(LTexts.confirmEmail,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: LSizes.spaceBtwSections),

                Text("demoEmail",
                    style: Theme.of(context).textTheme.labelLarge,
                    textAlign: TextAlign.center),
                const SizedBox(height: LSizes.spaceBtwSections),

                Text(LTexts.confirmEmailSubTitle,
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: LSizes.spaceBtwSections),

                ///Buttons
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                      image: LImages.staticSuccessIllustration,
                      title: LTexts.yourAccountCreatedTitle,
                      subTitle: LTexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(() => const LoginScreen()),
                    )),
                    child: const Text("Continue"),
                  ),
                ),

                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(LTexts.resendEmail),
                  ),
                ),
                const SizedBox(height: LSizes.spaceBtwSections),
              ],
            ),
          ),
        ));
  }
}
