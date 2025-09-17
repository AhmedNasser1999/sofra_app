import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sofra_app/core/widgets/coustom_button.dart';
import 'package:sofra_app/core/widgets/coustom_text_form_filed.dart';

class SignupPage extends StatelessWidget {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF8EE),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: FaIcon(
                      FontAwesomeIcons.hatCowboy,
                      color: Colors.deepOrange,
                    ),
                  ),
                  Text('Join Sofra', style: TextStyle(fontSize: 35.0)),
                  Text('Create your account', style: TextStyle(fontSize: 20.0)),
                  SizedBox(height: 30.0),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      color: Color(0xffffffff),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text(
                              'Create Account',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'Choose your account type to get started',
                              style: TextStyle(fontSize: 15.0),
                            ),
                            SizedBox(height: 30),
                            CoustomTextFormFiled(
                              lapelText: 'Full Name',
                              hintText: 'Enter Your Name',
                              controller: fullNameController,
                            ),
                            SizedBox(height: 15),
                            CoustomTextFormFiled(
                              lapelText: 'Email',
                              hintText: 'Enter Your Email',
                              controller: emailController,
                            ),
                            SizedBox(height: 15),

                            CoustomTextFormFiled(
                              lapelText: 'Password',
                              hintText: 'Enter Your Password',
                              controller: passwordController,
                            ),
                            SizedBox(height: 15),

                            CoustomTextFormFiled(
                              lapelText: 'Confirm Password',
                              hintText: 'Confirm Your Password',
                              controller: confirmPasswordController,
                            ),
                            SizedBox(height: 20.0),
                            CoustomButton(
                              onPressed: () {},
                              title: 'Create Account',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      TextButton(
                        onPressed: () {},

                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.deepOrange,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
