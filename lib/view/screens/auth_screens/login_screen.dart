import 'package:currencytrader/controller/utils/app_colors.dart';
import 'package:currencytrader/view/components/buttons.dart';
import 'package:currencytrader/view/components/customBottomNavigationBar.dart';
import 'package:currencytrader/view/components/text_fields.dart';
import 'package:currencytrader/view/screens/auth_screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.px),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25.px,
              ),
              Text("Welcome back!", style: GoogleFonts.roboto(color: AppColors.white, fontSize: 20, fontWeight: FontWeight.bold)),
              Text(
                "Sign In to your account",
                style: GoogleFonts.roboto(color: AppColors.white, fontSize: 16),
              ),
              SizedBox(
                height: 62.px,
              ),
              CustomTextField(hintText: "Enter your email", labelText: "Email", controller: emailController),
              SizedBox(
                height: 20.px,
              ),
              CustomPasswordField(hintText: "Enter your password", labelText: "Password", controller: passwordController),
              SizedBox(
                height: 10.px,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: GoogleFonts.roboto(color: AppColors.primaryBlueColor, fontSize: 12),
                ),
              ),
              SizedBox(
                height: 23.px,
              ),
              Align(
                alignment: Alignment.center,
                child: CustomButton(
                  text: "Sign In",
                  onPressed: () {
                    Get.to(const CustomBottomNavigationBar());
                  },
                ),
              ),
              SizedBox(
                height: 10.px,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const SignUpScreen());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Do not have an account? ",
                      style: GoogleFonts.roboto(color: AppColors.white, fontSize: 12),
                    ),
                    Text(
                      "Sign Up",
                      style: GoogleFonts.roboto(color: AppColors.primaryBlueColor, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
