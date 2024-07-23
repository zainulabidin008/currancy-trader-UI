import 'package:currencytrader/view/components/customwidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../controller/utils/app_colors.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getVerticalSpace(23.h),
        SvgPicture.asset('assets/images/ic_round-inbox.svg'),
        getVerticalSpace(3.h),
        Text(
          'No history data',
          style: GoogleFonts.roboto(
            color: AppColors.hintColor,
            fontSize: 12.px,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
