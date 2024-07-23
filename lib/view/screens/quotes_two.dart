import 'package:currencytrader/view/components/customwidgets.dart';
import 'package:currencytrader/view/screens/quotes_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../controller/utils/app_colors.dart';
import '../../controller/utils/app_text_styles.dart';

class Quote2Screen extends StatelessWidget {
  Quote2Screen({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.px),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset('assets/images/greymenu.svg')),
                  Text(
                    'Quotes',
                    style: CustomTextStyle.subHeadingStyle,
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.to(() => QuotesThreeScreen());
                      },
                      child: SvgPicture.asset('assets/icons/edit.svg')),
                ],
              ),
              getVerticalSpace(2.5.h),
              customTextFormField(
                controller,
                'Enter symbol for search',
                isObsecure: false,
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColors.hintIconColor,
                ),
              ),
              getVerticalSpace(1.h),
              Quote2CustomWidget(
                title: 'EURUSD',
              ),
              Quote2CustomWidget(
                title: 'GBPUSD',
                isRed: true.obs,
              ),
              Quote2CustomWidget(
                title: 'USDCHF',
                isRed: true.obs,
              ),
              Quote2CustomWidget(
                title: 'USDJPY',
              ),
              Quote2CustomWidget(
                title: 'USDCNH',
              ),
              Quote2CustomWidget(
                title: 'EURUSD',
              ),
              Quote2CustomWidget(
                title: 'GBPUSD',
                isRed: true.obs,
              ),
              Quote2CustomWidget(
                title: 'USDCHF',
                isRed: true.obs,
              ),
              Quote2CustomWidget(
                title: 'USDJPY',
              ),
              Quote2CustomWidget(
                title: 'USDCNH',
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
