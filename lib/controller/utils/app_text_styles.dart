import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'app_colors.dart';

class CustomTextStyle {
  static TextStyle headingStyle = GoogleFonts.roboto(
    color: AppColors.white,
    fontSize: 20.px,
    fontWeight: FontWeight.w800,
  );

  static TextStyle subHeadingStyle = GoogleFonts.roboto(
    color: AppColors.white,
    fontSize: 16.px,
    fontWeight: FontWeight.w400,
  );

  static TextStyle hintTextStyle = GoogleFonts.roboto(
    color: AppColors.hintIconColor,
    fontSize: 12.px,
    fontWeight: FontWeight.w400,
  );

  static TextStyle regularStyle = GoogleFonts.roboto(
    color: AppColors.white,
    fontSize: 10.19.px,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bottomBarText = GoogleFonts.roboto(
    color: AppColors.bottomBarIconColor,
    fontSize: 10.px,
    fontWeight: FontWeight.w400,
  );
}
