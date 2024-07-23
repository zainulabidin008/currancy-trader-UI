import 'package:currencytrader/controller/utils/app_colors.dart';
import 'package:currencytrader/controller/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget getVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

Widget getHorizentalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

Widget customTextFormField(TextEditingController? controller, String? hintText,
    {TextInputType? keyboardType,
    Widget? prefixIcon,
    final ValueChanged<String>? onChanged,
    Icon? icon,
    Widget? sufixIcon,
    Color? iconColor,
    String? lableText,
    int? maxLine,
    BorderRadius? borderRadius,
    TextStyle? lableStyle,
    required bool isObsecure,
    EdgeInsets? contentPading,
    Color? hintTextColor,
    bool readOnly = false,
    Callback? isTap}) {
  return TextFormField(
    maxLines: maxLine,
    onChanged: onChanged,
    cursorHeight: 2.h,
    obscureText: isObsecure,
    controller: controller,
    style: CustomTextStyle.hintTextStyle,
    cursorColor: Colors.white,
    keyboardType: keyboardType,
    readOnly: readOnly,
    onTap: isTap,
    decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(30.px),
            borderSide: const BorderSide(color: Colors.transparent)),
        filled: true,
        contentPadding: contentPading ??
            EdgeInsets.symmetric(
                horizontal: 2.h, vertical: 1.5.h), // Adjust vertical padding
        isCollapsed: true,
        border: OutlineInputBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(30.px),
            borderSide: const BorderSide(color: Colors.transparent)),
        fillColor: AppColors.textFieldBgColor,
        prefixIcon: prefixIcon,
        suffixIcon: sufixIcon,
        hintText: hintText,
        hintStyle: CustomTextStyle.hintTextStyle,
        labelText: lableText,
        labelStyle: lableStyle),
  );
}

class SettingScreenTile extends StatelessWidget {
  final String title, svg;
  final String? titleMedium;
  final VoidCallback onTap;
  final RxBool? hideMediumTitle;
  const SettingScreenTile({
    super.key,
    required this.title,
    required this.svg,
    this.titleMedium,
    required this.onTap,
    this.hideMediumTitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 30.px,
                width: 30.px,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.px),
                  color: AppColors.primaryBlueColor,
                ),
                child: Center(
                  child: SvgPicture.asset(svg),
                ),
              ),
              getHorizentalSpace(0.6.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.roboto(
                      color: AppColors.white,
                      fontSize: 14.px,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  // getVerticalSpace(2.px),
                  hideMediumTitle?.value == true
                      ? Text(
                          titleMedium!,
                          style: CustomTextStyle.hintTextStyle,
                        )
                      : SizedBox.shrink(),
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 4.px),
                child: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppColors.white,
                  size: 10.px,
                ),
              ),
            ],
          ),
          // getVerticalSpace(2.px),
          Divider(
            color: AppColors.hintColor,
          ),
        ],
      ),
    );
  }
}

class BalanceWidget extends StatelessWidget {
  final String title, balance;
  const BalanceWidget({super.key, required this.title, required this.balance});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getVerticalSpace(0.5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: GoogleFonts.roboto(
                color: AppColors.white,
                fontSize: 12.px,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              balance,
              style: GoogleFonts.roboto(
                color: AppColors.white,
                fontSize: 12.px,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        getVerticalSpace(0.5.h),
      ],
    );
  }
}

class Quote2CustomWidget extends StatelessWidget {
  final String title;
  RxBool? isRed = false.obs;
  Quote2CustomWidget({
    super.key,
    required this.title,
    this.isRed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 7.5.h,
      child: Padding(
        padding: EdgeInsets.all(4.px),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '+94 ',
                        style: GoogleFonts.roboto(
                          color: AppColors.hintColor,
                          fontSize: 10.px,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '0.09%',
                        style: GoogleFonts.roboto(
                          color: AppColors.primaryBlueColor,
                          fontSize: 10.px,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  title,
                  style: GoogleFonts.roboto(
                    color: AppColors.white,
                    fontSize: 14.px,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '15:10:33',
                      style: GoogleFonts.roboto(
                        color: AppColors.hintColor,
                        fontSize: 10.px,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    getHorizentalSpace(0.5.h),
                    SvgPicture.asset('assets/icons/between-text.svg'),
                    getHorizentalSpace(0.5.h),
                    Text(
                      '3',
                      style: GoogleFonts.roboto(
                        color: AppColors.hintColor,
                        fontSize: 10.px,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '1.06',
                        style: GoogleFonts.roboto(
                          color: isRed?.value == true
                              ? AppColors.primaryRedColor
                              : AppColors.primaryBlueColor,
                          fontSize: 12.px,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '91',
                        style: GoogleFonts.roboto(
                          color: isRed?.value == true
                              ? AppColors.primaryRedColor
                              : AppColors.primaryBlueColor,
                          fontSize: 20.px,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '7',
                        style: GoogleFonts.roboto(
                          color: isRed?.value == true
                              ? AppColors.primaryRedColor
                              : AppColors.primaryBlueColor,
                          fontSize: 12.px,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'L: 1.06494',
                  style: GoogleFonts.roboto(
                    color: AppColors.hintColor,
                    fontSize: 10.px,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            getHorizentalSpace(2.6.h),
            Column(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '1.06',
                        style: GoogleFonts.roboto(
                          color: isRed?.value == true
                              ? AppColors.primaryRedColor
                              : AppColors.primaryBlueColor,
                          fontSize: 12.px,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '91',
                        style: GoogleFonts.roboto(
                          color: isRed?.value == true
                              ? AppColors.primaryRedColor
                              : AppColors.primaryBlueColor,
                          fontSize: 20.px,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: '7',
                        style: GoogleFonts.roboto(
                          color: isRed?.value == true
                              ? AppColors.primaryRedColor
                              : AppColors.primaryBlueColor,
                          fontSize: 12.px,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'H: 1.06494',
                  style: GoogleFonts.roboto(
                    color: AppColors.hintColor,
                    fontSize: 10.px,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
