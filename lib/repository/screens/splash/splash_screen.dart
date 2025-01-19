import 'dart:async';

import 'package:blinkitclone/domain/constant/app_colors.dart';
import 'package:blinkitclone/repository/screens/login/login_screen.dart';
import 'package:blinkitclone/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginSreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scafoldBackground,
      body: Container(
        alignment: Alignment.center,
        child: UiHelper.customImage(image: "image 1.png"),
      ),
    );
  }
}
