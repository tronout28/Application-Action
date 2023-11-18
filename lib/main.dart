import 'package:application_action/LandingPage/register.dart';
import 'package:application_action/Page/Payment/payment_page_view.dart';
import 'package:application_action/Page/Profile/profile_page_view.dart';
import 'package:application_action/consts/consts.dart';
import 'package:application_action/service/firebase_options.dart';
import 'LandingPage/onBoarding/on_boarding_page_view.dart';
import 'LandingPage/loginpage_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Page/Home/home_page_view.dart';
import 'package:flutter/material.dart';
import 'Page/Widget/navbarWidget.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PaymentPage(),
    );
  }
}
