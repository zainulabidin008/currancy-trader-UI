import 'package:currencytrader/controller/utils/app_colors.dart';
import 'package:currencytrader/view/components/customwidgets.dart';
import 'package:currencytrader/view/screens/BottomBar_Screens/history_screens/tabbars/deals.dart';
import 'package:currencytrader/view/screens/BottomBar_Screens/history_screens/tabbars/orders.dart';
import 'package:currencytrader/view/screens/BottomBar_Screens/history_screens/tabbars/positions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({super.key});

  RxInt isSelected = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(2.h),
          child: Obx(
            () => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/icons/Up And Down Arrows.svg'),
                    getHorizentalSpace(5.h),
                    Expanded(
                      child: Container(
                        height: 30.px,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.px),
                          color: AppColors.blackDark,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  isSelected.value = 0;
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.px),
                                    color: isSelected.value == 0
                                        ? AppColors.bottomBarColor
                                        : AppColors.blackDark,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Positions',
                                      style: GoogleFonts.roboto(
                                        color: isSelected.value == 0
                                            ? AppColors.white
                                            : AppColors.hintColor,
                                        fontSize: 12.px,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  isSelected.value = 1;
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.px),
                                    color: isSelected.value == 1
                                        ? AppColors.bottomBarColor
                                        : AppColors.blackDark,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Orders',
                                      style: GoogleFonts.roboto(
                                        color: isSelected.value == 1
                                            ? AppColors.white
                                            : AppColors.hintColor,
                                        fontSize: 12.px,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  isSelected.value = 2;
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.px),
                                    color: isSelected.value == 2
                                        ? AppColors.bottomBarColor
                                        : AppColors.blackDark,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Deals',
                                      style: GoogleFonts.roboto(
                                        color: isSelected.value == 2
                                            ? AppColors.white
                                            : AppColors.hintColor,
                                        fontSize: 12.px,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    getHorizentalSpace(5.h),
                    SvgPicture.asset('assets/icons/History.svg'),
                  ],
                ),
                getVerticalSpace(3.h),
                isSelected.value == 0
                    ? const Positions()
                    : isSelected.value == 1
                        ? const OrdersScreen()
                        : isSelected.value == 2
                            ? const Deals()
                            : const SizedBox.shrink(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
