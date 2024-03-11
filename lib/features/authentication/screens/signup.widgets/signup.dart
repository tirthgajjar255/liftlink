import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:liftlink/utils/constants/colors.dart';
import 'package:liftlink/utils/constants/sizes.dart';
import 'package:liftlink/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:liftlink/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = LHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.all(LSizes.defaultSpace),
          child: Padding(
            padding: EdgeInsets.all(LSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(LTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: LSizes.spaceBtwSections),

                Form(child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                          expands: false,
                          decoration: const InputDecoration(labelText: LTexts.firstName, prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                        const SizedBox(width: LSizes.spaceBtwInputFields),
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(labelText: LTexts.firstName, prefixIcon: Icon(Iconsax.user)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: LSizes.spaceBtwInputFields),

                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(labelText: LTexts.email, prefixIcon: Icon(Iconsax.direct_right)),
                    ),
                    const SizedBox(height: LSizes.spaceBtwInputFields),

                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(labelText: LTexts.CompanyName, prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ImageIcon(
                          AssetImage('assets/icons/company_icon.png'),
                          size: 10, // Adjust size as needed
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: LSizes.spaceBtwInputFields),

                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(labelText: LTexts.Area, prefixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ImageIcon(
                        AssetImage('assets/icons/area_icon.png'),
                        size: 5),
                        ),
                      ),
                    ),
                    const SizedBox(height: LSizes.spaceBtwInputFields),

                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                         labelText: LTexts.password,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(height: LSizes.spaceBtwSections),

                    Row(
                      children: [
                        SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value){})),
                        const SizedBox(height: LSizes.spaceBtwItems),
                        Text.rich(TextSpan(
                          children: [
                            TextSpan(text: '${LTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
                            TextSpan(text: '${LTexts.privacyPolicy} ', style: Theme.of(context).textTheme.bodySmall!.apply(
                              color: dark ? LColors.white : LColors.primary,
                              decoration: TextDecoration.underline,
                              decorationColor: dark ? LColors.white : LColors.primary,
                            )),
                            TextSpan(text: '${LTexts.and} ', style: Theme.of(context).textTheme.bodySmall),
                            TextSpan(text: LTexts.termsOfUse, style: Theme.of(context).textTheme.bodySmall!.apply(
                              color: dark ? LColors.white : LColors.primary,
                              decoration: TextDecoration.underline,
                              decorationColor: dark ? LColors.white : LColors.primary,
                            )),
                            ]
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: LSizes.spaceBtwSections),

                    SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text(LTexts.createAccount))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
