import 'package:blood_donation/app/views/auth/login_screen_view.dart';
import 'package:blood_donation/app/widgets/navigate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import '../../controllers/auth/auth_controller.dart';
import '../../widgets/buttons/reusable_primary_button.dart';
import '../../widgets/textformfield/reusable_textformfield.dart';

class RegistrationScreenView extends StatelessWidget {
  const RegistrationScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final authController = Get.put(AuthController());
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Image.asset(
                  'assets/images/im2.png',
                  width: _size.width / 1.8,
                ),
              ),
            ),
            const Text(
              'রক্ত দানের জন্য আপনার\nপ্রোফাইল পূরণ করুন',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: kDefaultPadding * 2,
            ),
            Form(
              child: Column(
                children: [
                  ReusableTextFormField(
                    controller: _emailController,
                    hintText: 'Enter your name',
                    labelText: 'Name',
                    obscureIcon: false,
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  ReusableTextFormField(
                    controller: _emailController,
                    hintText: 'Enter your email',
                    labelText: 'Email',
                    obscureIcon: false,
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  ReusableTextFormField(
                    controller: _passwordController,
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    obscureIcon: true,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  ReusableTextFormField(
                    controller: _passwordController,
                    hintText: 'Enter blood group',
                    labelText: 'Blood Group',
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  ReusableTextFormField(
                    controller: _passwordController,
                    hintText: 'Enter your phone number',
                    labelText: 'Phone Number',
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  ReusableTextFormField(
                    controller: _passwordController,
                    hintText: 'Enter your city',
                    labelText: 'City',
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  ReusableTextFormField(
                    controller: _passwordController,
                    hintText: 'Enter your address',
                    labelText: 'Address',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: kDefaultPadding * 3,
            ),
            ReusablePrimaryButton(
              btnColor: Colors.red,
              btnText: 'Sign Up',
              btnTextColor: Colors.white,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print('Form is valid');
                } else {
                  print('error');
                }
              },
            ),
            const SizedBox(
              height: kDefaultPadding * 2,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                'Already have an account?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                width: kDefaultPadding,
              ),
              GestureDetector(
                onTap: () {
                  push(context: context, widget: const LoginScreenView());
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: kDefaultPadding,
            ),
          ],
        ),
      ),
    );
  }
}
