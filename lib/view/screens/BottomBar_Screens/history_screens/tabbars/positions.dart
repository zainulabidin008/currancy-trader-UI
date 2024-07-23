import 'package:currencytrader/view/components/customwidgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../controller/utils/app_colors.dart';

class Positions extends StatelessWidget {
  const Positions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Balance',
              style: GoogleFonts.roboto(
                color: AppColors.white,
                fontSize: 14.px,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              '100 000.00',
              style: GoogleFonts.roboto(
                color: AppColors.primaryBlueColor,
                fontSize: 14.px,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        getVerticalSpace(0.5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '2024.03.29 07:45:58',
              style: GoogleFonts.roboto(
                color: AppColors.hintColor,
                fontSize: 14.px,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        getVerticalSpace(1.h),
        Divider(
          color: AppColors.hintColor,
        ),
        BalanceWidget(
          title: 'Deposit',
          balance: '100 000.00',
        ),
        BalanceWidget(
          title: 'Profit',
          balance: '0.00',
        ),
        BalanceWidget(
          title: 'Swap',
          balance: '0.00',
        ),
        BalanceWidget(
          title: 'Commission',
          balance: '0.00',
        ),
        BalanceWidget(
          title: 'Balance',
          balance: '100 000.00',
        ),
        getVerticalSpace(1.h),
        Divider(
          color: AppColors.hintColor,
        ),
      ],
    );
  }
}
