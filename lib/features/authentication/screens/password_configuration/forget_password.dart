import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liftlink/features/authentication/screens/password_configuration/reset_password.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(LSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Heading
            Text(LTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: LSizes.spaceBtwItems),

            Text(LTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center),
            const SizedBox(height: LSizes.spaceBtwSections * 2),

            ///Text field
            SizedBox(
              width: 450,
              height: 53,
              child: TextFormField(
                style: const TextStyle(color: Colors.black, fontSize: 18),
                decoration: const InputDecoration(
                  prefixIcon:
                  Icon(Icons.attach_email_outlined, color: Colors.black),
                  labelText: LTexts.email,
                  labelStyle: TextStyle(color: Colors.black, fontSize: 18.0),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            const SizedBox(height: LSizes.spaceBtwSections),

            ///Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPassword()),
                child: const Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}