import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../controller/utils/app_colors.dart';
import '../../components/customwidgets.dart';

class TradeScreen extends StatelessWidget {
  const TradeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(2.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Text(
                    'USD',
                    style: GoogleFonts.roboto(
                      color: AppColors.white,
                      fontSize: 16.px,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SvgPicture.asset('assets/icons/Add.svg'),
                ],
              ),
              getVerticalSpace(3.h),
              BalanceWidget(
                title: 'Balance',
                balance: '100 000.00',
              ),
              BalanceWidget(
                title: 'Equity',
                balance: '100 000.00',
              ),
              BalanceWidget(
                title: 'Free Margin',
                balance: '100 000.00',
              ),
              getVerticalSpace(25.h),
              SvgPicture.asset('assets/images/Growth.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
