import 'package:currencytrader/controller/utils/app_colors.dart';
import 'package:currencytrader/controller/utils/app_text_styles.dart';
import 'package:currencytrader/view/screens/BottomBar_Screens/QuotesScreen.dart';
import 'package:currencytrader/view/screens/BottomBar_Screens/chartScreeen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../screens/BottomBar_Screens/history_screens/history_Screen.dart';
import '../screens/BottomBar_Screens/trade_Screen.dart';
import '../screens/settings_screen.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    RxInt selectedIndex = 0.obs;
    return Scaffold(
      bottomNavigationBar: Obx(
        () => Container(
          margin: EdgeInsets.symmetric(horizontal: 1.6.h, vertical: 2.h),
          padding: EdgeInsets.symmetric(horizontal: 2.8.h, vertical: 1.8.h),
          height: 8.8.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.px),
              color: AppColors.bottomBarColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  selectedIndex.value = 0;
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/quotesicon.svg',
                      colorFilter: selectedIndex.value == 0
                          ? const ColorFilter.mode(
                              AppColors.primaryBlueColor, BlendMode.srcIn)
                          : const ColorFilter.mode(
                              AppColors.white,
                              BlendMode
                                  .srcIn), // Change this to the desired color code
                    ),
                    Text('Quotes',
                        style: CustomTextStyle.bottomBarText.copyWith(
                          color: selectedIndex.value == 0
                              ? AppColors.primaryBlueColor
                              : Colors.white,
                        ))
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  selectedIndex.value = 1;
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/chart.svg',
                      colorFilter: selectedIndex.value == 1
                          ? const ColorFilter.mode(
                              AppColors.primaryBlueColor, BlendMode.srcIn)
                          : const ColorFilter.mode(
                              AppColors.white,
                              BlendMode
                                  .srcIn), // Change this to the desired color code
                    ),
                    Text('Charts',
                        style: CustomTextStyle.bottomBarText.copyWith(
                          color: selectedIndex.value == 1
                              ? AppColors.primaryBlueColor
                              : Colors.white,
                        ))
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  selectedIndex.value = 2;
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/trade.svg',
                      colorFilter: selectedIndex.value == 2
                          ? const ColorFilter.mode(
                              AppColors.primaryBlueColor, BlendMode.srcIn)
                          : const ColorFilter.mode(
                              AppColors.white,
                              BlendMode
                                  .srcIn), // Change this to the desired color code
                    ),
                    Text('Trade',
                        style: CustomTextStyle.bottomBarText.copyWith(
                          color: selectedIndex.value == 2
                              ? AppColors.primaryBlueColor
                              : Colors.white,
                        ))
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  selectedIndex.value = 3;
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/history.svg',
                      colorFilter: selectedIndex.value == 3
                          ? const ColorFilter.mode(
                              AppColors.primaryBlueColor, BlendMode.srcIn)
                          : const ColorFilter.mode(
                              AppColors.white,
                              BlendMode
                                  .srcIn), // Change this to the desired color code
                    ),
                    Text('History',
                        style: CustomTextStyle.bottomBarText.copyWith(
                          color: selectedIndex.value == 3
                              ? AppColors.primaryBlueColor
                              : Colors.white,
                        ))
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  selectedIndex.value = 4;
                },
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/Settings1.svg',
                      colorFilter: selectedIndex.value == 4
                          ? const ColorFilter.mode(
                              AppColors.primaryBlueColor, BlendMode.srcIn)
                          : const ColorFilter.mode(
                              AppColors.white,
                              BlendMode
                                  .srcIn), // Change this to the desired color code
                    ),
                    Text(
                      'Settings',
                      style: CustomTextStyle.bottomBarText.copyWith(
                          color: selectedIndex.value == 4
                              ? AppColors.primaryBlueColor
                              : Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Obx(
        () => selectedIndex.value == 0
            ? const QuotesScreen()
            : selectedIndex.value == 4
                ? SettingsScreen()
                : selectedIndex.value == 3
                    ? HistoryScreen()
                    : selectedIndex.value == 2
                        ? TradeScreen()
                        : const ChartScreen(),
      ),
    );
  }
}
