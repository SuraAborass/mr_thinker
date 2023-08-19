import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/colors.dart';
import '../../../Controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);
  final SplashController splashController = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.white,
      bottomNavigationBar: Container(
        height : 20,
        color: UIColors.yellow,
      ),
      body: Center(
        child: Image.asset(
          'assets/images/OIP-removebg-preview.png',
          height: 290,
          width: 345,
        ),
      )
    );
  }
}
