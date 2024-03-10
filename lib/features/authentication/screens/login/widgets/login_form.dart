import 'package:flutter/material.dart';
import 'package:liftlink/utils/constants/text_strings.dart';
import 'package:liftlink/utils/constants/sizes.dart';

class LLoginForm extends StatelessWidget {
  const LLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 450,
              height: 57,
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.attach_email_outlined,
                    color: Colors.black,
                  ),
                  labelText: LTexts.email,
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            const SizedBox(
              height: LSizes.defaultSpace,
            ),
            SizedBox(
              width: 450,
              height: 57,
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.password_outlined,
                    color: Colors.black,
                  ),
                  labelText: LTexts.password,
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(
                      LTexts.rememberMe,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),

                /// Forget Password
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(foregroundColor: Colors.blue),
                  child: const Text(
                    LTexts.forgetPassword,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(180, 57),
              ),
              child: const Text(
                LTexts.signIn,
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: LSizes.defaultSpace,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Don't have an account?",
                    style: TextStyle(fontSize: 18, color: Colors.white)),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(150, 57),
                  ),
                  child: const Text(
                    LTexts.createAccount,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: LSizes.defaultSpace,
            ),
          ],
        ),
      ),
    );
  }
}
