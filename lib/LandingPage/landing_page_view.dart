import 'package:application_action/LandingPage/loginpage_view.dart';
import 'package:application_action/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:application_action/LandingPage/register.dart';

class LandingPageView extends StatelessWidget {
  const LandingPageView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Container(
              height: 110,
              child: Text(
                "Welcome To TechBrix",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(LoginPage());
                //signin
              },
              child: Text(
                'Sign In',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 100, 237, 255),
                minimumSize: Size(260, 50),
                elevation: 8,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(SignUpView());
              },
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                minimumSize: Size(260, 50),
                elevation: 8,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Or Sign In With',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 35),
            InkWell(
              onTap: () {
                //google
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color.fromARGB(255, 181, 181, 181),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/icons/googleicon.svg',
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
