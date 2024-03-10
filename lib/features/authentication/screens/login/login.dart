import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:liftlink/common/styles/spacing_styles.dart';
import 'package:liftlink/features/authentication/screens/signup.widgets/signup.dart';
import 'package:liftlink/utils/constants/image_strings.dart';
import 'package:liftlink/utils/constants/sizes.dart';
import 'package:liftlink/utils/helpers/helper_functions.dart';
import 'package:liftlink/utils/constants/text_strings.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: LSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                      height: 150,
                      image: AssetImage(dark ? LImages.lightAppLogo : LImages.darkAppLogo),
                  ),
                  Text(LTexts.loginTitle, style: Theme.of(context). textTheme.headlineMedium),
                  const SizedBox(height: LSizes.sm),
                  Text(LTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),

              /// Form
              Form(child: Padding(
                padding: const EdgeInsets.symmetric(vertical: LSizes.spaceBtwSections),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right), labelText: LTexts.email),
                    ),
                    const SizedBox(height: LSizes.spaceBtwInputFields),


                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check), labelText: LTexts.password, suffixIcon: Icon(Iconsax.eye_slash)),
                    ),
                    const SizedBox(height: LSizes.spaceBtwInputFields/ 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value){}),
                          const Text(LTexts.rememberMe),
                        ],
                      ),

                      TextButton(onPressed: (){}, child: const Text(LTexts.forgetPassword)),
                    ],
                  ),
                    const SizedBox(height: LSizes.spaceBtwSections),

                    SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text(LTexts.signIn))),
                    const SizedBox(height: LSizes.spaceBtwSections),


                    SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()), child: Text(LTexts.createAccount))),

                  ],
                ),
              ),
              ),

             /* // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Flexible(child: Divider(color: dark ? LColors.darkGrey: LColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
              //     Text(LTexts.orSignUpWith.capitalize!, style: Theme.of(context).textTheme.labelMedium),
              //     Flexible(child: Divider(color: dark ? LColors.darkGrey: LColors.grey, thickness: 0.5, indent: 5, endIndent: 60)),
              //   ],
              // ),
              //
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Container(
              //       decoration: BoxDecoration(border: Border.all(color: LColors.grey), borderRadius: BorderRadius.circular(100)),
              //       child: IconButton(onPressed: (){},
              //
              //       ),
              //     ),
              //   ],
              // ),*/
            ],
          ),
        ),
      ),
    );
  }
}
