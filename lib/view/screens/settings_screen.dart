import 'package:currencytrader/controller/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../controller/utils/app_text_styles.dart';
import '../components/customwidgets.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(2.5.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Settings',
                      style: CustomTextStyle.subHeadingStyle,
                    ),
                  ],
                ),
                SizedBox(height: 2.5.h),
                Container(
                  color: AppColors.blackDark,
                  child: Column(
                    children: [
                      getVerticalSpace(1.5.h),
                      Text(
                        'MetaTrader 5 IOS Demo',
                        style: GoogleFonts.roboto(
                          color: AppColors.white,
                          fontSize: 14.px,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'MetaQuotes Software Corp.',
                        style: CustomTextStyle.regularStyle,
                      ),
                      SizedBox(height: 1.5.h),
                      Text(
                        '10001769281 -  MetaQuotes - Demo',
                        style: GoogleFonts.roboto(
                          color: AppColors.white,
                          fontSize: 14.px,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Access Point EU 1',
                        style: CustomTextStyle.regularStyle,
                      ),
                      SizedBox(height: 4.4.h),
                      SettingScreenTile(
                        title: 'New Account',
                        onTap: () {},
                        svg: 'assets/icons/settings_screens/Add profile.svg',
                      ),
                      SettingScreenTile(
                        title: 'Mailbox',
                        titleMedium: 'you have registered a new account',
                        onTap: () {},
                        svg: 'assets/icons/settings_screens/Mail.svg',
                        hideMediumTitle: true.obs,
                      ),
                      SettingScreenTile(
                        title: 'News',
                        onTap: () {},
                        svg: 'assets/icons/settings_screens/News.svg',
                      ),
                      SettingScreenTile(
                        title: 'Tradays',
                        titleMedium: 'Economic calendar',
                        onTap: () {},
                        svg: 'assets/icons/settings_screens/trade.svg',
                        hideMediumTitle: true.obs,
                      ),
                    ],
                  ),
                ),
                getVerticalSpace(2.5.h),
                Container(
                  color: AppColors.blackDark,
                  child: Column(
                    children: [
                      SettingScreenTile(
                        title: 'Chat and messages',
                        titleMedium: 'Sign in to MQL5 community!',
                        onTap: () {},
                        svg: 'assets/icons/settings_screens/message.svg',
                        hideMediumTitle: true.obs,
                      ),
                      SettingScreenTile(
                        title: 'Traders Community',
                        onTap: () {},
                        svg:
                            'assets/icons/settings_screens/traders-community.svg',
                      ),
                    ],
                  ),
                ),
                getVerticalSpace(2.5.h),
                Container(
                  color: AppColors.blackDark,
                  child: Column(
                    children: [
                      SettingScreenTile(
                        title: 'OTP',
                        titleMedium: 'One-time password generator',
                        onTap: () {},
                        svg: 'assets/icons/settings_screens/lock.svg',
                        hideMediumTitle: true.obs,
                      ),
                      SettingScreenTile(
                        title: 'Interface',
                        titleMedium: 'English',
                        onTap: () {},
                        svg: 'assets/icons/settings_screens/interface.svg',
                        hideMediumTitle: true.obs,
                      ),
                      SettingScreenTile(
                        title: 'Charts',
                        onTap: () {},
                        svg: 'assets/icons/settings_screens/trade.svg',
                      ),
                      SettingScreenTile(
                        title: 'Journal',
                        onTap: () {},
                        svg: '',
                      ),
                      SettingScreenTile(
                        title: 'Settings',
                        onTap: () {},
                        svg: 'assets/icons/settings_screens/Settings.svg',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
