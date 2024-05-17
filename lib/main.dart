import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gomaabook/constant.dart';
import 'package:gomaabook/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const GomaaBookApp());
}

class GomaaBookApp extends StatelessWidget {
  const GomaaBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: const SplashView(),
    );
  }
}
