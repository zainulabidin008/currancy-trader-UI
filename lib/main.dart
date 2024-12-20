import 'package:currencytrader/view/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'controller/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return ResponsiveSizer(
          builder: (p0, p1, p2) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Currency Trader',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(
                    seedColor: AppColors.primaryBlueColor,
                    background: AppColors.secondaryColor),
                useMaterial3: true,
              ),
              home: const SplashScreen(),
            );
          },
        );
      },
    );
  }
}
