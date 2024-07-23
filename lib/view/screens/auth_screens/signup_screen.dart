import 'package:country_code_picker/country_code_picker.dart';
import 'package:currencytrader/controller/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../controller/utils/app_colors.dart';
import '../../components/buttons.dart';
import '../../components/text_fields.dart';
import 'otp_screen.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController countryCodeController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    countryCodeController.text = "+846";
  }

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
              Text("Welcome back!", style: CustomTextStyle.headingStyle,),
              Text(
                "Sign Up to your account",
                style: CustomTextStyle.subHeadingStyle,
              ),
              SizedBox(
                height: 62.px,
              ),
              CustomTextField(hintText: "Enter your email", labelText: "Email", controller: emailController),
              SizedBox(
                height: 20.px,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 58.px,
                    child: IntrinsicWidth(
                      child: TextFormField(
                        readOnly: true,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelStyle: const TextStyle(
                            color: Colors.white,
                          ),
                          labelText: "Country",
                          isCollapsed: false,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.px),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(borderRadius.px),
                            borderSide: const BorderSide(color: AppColors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(borderRadius.px),
                            borderSide: const BorderSide(color: AppColors.primaryBlueColor),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(borderRadius.px),
                            borderSide: const BorderSide(color: AppColors.primaryRedColor),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          iconColor: AppColors.white,
                          floatingLabelAlignment: FloatingLabelAlignment.center,
                          suffixIcon: const Icon(
                            Icons.arrow_drop_down,
                            color: AppColors.white,
                          ),
                          prefix: const CountryCodePicker(
                            onChanged: print,
                            textStyle: TextStyle(color: Colors.white),
                            initialSelection: 'United Kingdom',
                            favorite: ['+44', 'UK'],
                            showCountryOnly: false,
                            showOnlyCountryWhenClosed: false,
                            showFlag: false,
                            alignLeft: false,
                            padding: EdgeInsets.all(0),
                          ),
                          fillColor: AppColors.secondaryColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.px,
                  ),
                  Expanded(child: CustomNumberField(hintText: "Enter your Phone", labelText: "Number", controller: numberController)),
                ],
              ),
              SizedBox(
                height: 20.px,
              ),
              CustomPasswordField(hintText: "Enter your password", labelText: "Password", controller: passwordController),
              SizedBox(
                height: 20.px,
              ),
              CustomPasswordField(hintText: "Enter your password", labelText: "Confirm Password", controller: confirmPasswordController),
              // SizedBox(
              //   height: 10.px,
              // ),
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: Text(
              //     "Forgot Password?",
              //     style: GoogleFonts.roboto(color: AppColors.primaryBlueColor, fontSize: 12),
              //   ),
              // ),
              SizedBox(
                height: 5.h,
              ),
              Align(
                alignment: Alignment.center,
                child: CustomButton(
                  text: "Sign Up",
                  onPressed: () {
                    Get.to(const OtpScreen());
                  },
                ),
              ),
              SizedBox(
                height: 10.px,
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: GoogleFonts.roboto(color: AppColors.white, fontSize: 12),
                    ),
                    Text(
                      "Log In",
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
