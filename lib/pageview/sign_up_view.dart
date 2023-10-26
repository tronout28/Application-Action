import 'package:application_action/home.dart';
import 'package:application_action/pageview/loginpage_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:application_action/consts/consts.dart';
import 'package:application_action/controllers/auth_controller.dart';

class SignUpView extends StatelessWidget {
  final signUpController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              onChanged: (value) {
                signUpController.username.value = value;
              },
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              onChanged: (value) {
                signUpController.email.value = value;
              },
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              onChanged: (value) {
                signUpController.password.value = value;
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              onChanged: (value) {
                signUpController.confirmPassword.value = value;
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                signUpController.signupMethod();
                Get.off(LoginPage());
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
