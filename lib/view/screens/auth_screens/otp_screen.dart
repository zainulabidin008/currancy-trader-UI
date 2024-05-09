import 'package:currencytrader/view/screens/auth_screens/verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../controller/utils/app_colors.dart';
import '../../components/buttons.dart';
import '../../components/text_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final List<TextEditingController> controllers = List.generate(4, (index) => TextEditingController());
  final FocusNode firstFocus = FocusNode();
  final FocusNode secondFocus = FocusNode();
  final FocusNode thirdFocus = FocusNode();
  final FocusNode fourthFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.px),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 70.px,
            ),
            SvgPicture.asset('assets/images/otp_image.svg'),
            SizedBox(
              height: 44.px,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text("Enter OTP", style: GoogleFonts.roboto(color: AppColors.white, fontSize: 18, fontWeight: FontWeight.bold))),
            Text(
              "Verification code of 4 digit code has been sent to your email.",
              style: GoogleFonts.roboto(color: AppColors.white, fontSize: 12),
            ),
            SizedBox(
              height: 10.px,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OTPTextField(controller: controllers[0], focusNode: firstFocus),
                  OTPTextField(controller: controllers[1], focusNode: secondFocus),
                  OTPTextField(controller: controllers[2], focusNode: thirdFocus),
                  OTPTextField(controller: controllers[3], focusNode: fourthFocus),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You should receive the OTP in ",
                  style: GoogleFonts.roboto(color: AppColors.white, fontSize: 12),
                ),
                Text(
                  "30 Second",
                  style: GoogleFonts.roboto(color: AppColors.primaryBlueColor, fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 50.px,
            ),
            Align(
              alignment: Alignment.center,
              child: CustomButton(
                text: "Done",
                onPressed: () {
                  Get.to(const VerificationScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
