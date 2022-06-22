import 'package:blood_donation/app/views/auth/registration_screen_view.dart';
import 'package:blood_donation/app/widgets/buttons/reusable_primary_button.dart';
import 'package:blood_donation/app/widgets/navigate.dart';
import 'package:blood_donation/constants.dart';
import 'package:flutter/material.dart';
import '../../widgets/textformfield/reusable_textformfield.dart';

class LoginScreenView extends StatelessWidget {
  const LoginScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                child: Image.asset(
                  'assets/images/im1.png',
                  width: size.width / 1.8,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'আগের প্রোফাইলে ফিরে যান',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: kDefaultPadding * 3,
            ),
            Form(
              child: Column(
                children: [
                  ReusableTextFormField(
                    controller: emailController,
                    hintText: 'Enter your email',
                    labelText: 'Email',
                    obscureIcon: false,
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  ReusableTextFormField(
                    controller: passwordController,
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    obscureIcon: true,
                    obscureText: true,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: kDefaultPadding * 3,
            ),
            ReusablePrimaryButton(
              btnColor: Colors.red,
              btnText: 'Login',
              btnTextColor: Colors.white,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  print('Form is valid');
                } else {
                  print('error');
                }
              },
            ),
            const SizedBox(
              height: kDefaultPadding * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    push(
                        context: context,
                        widget: const RegistrationScreenView());
                  },
                  child: const Text(
                    'Sign up',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
