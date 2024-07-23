import 'package:currencytrader/controller/utils/app_colors.dart';
import 'package:currencytrader/controller/utils/app_text_styles.dart';
import 'package:currencytrader/view/components/customwidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'menuItems_Screen.dart';

class EditMenuScreen extends StatelessWidget {
  const EditMenuScreen({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    RxList<String> symbolList = <String>[
      'EURUSD',
      'GBPUSD',
      'NZDUSD',
      'USDCAD',
      'USDCHF',
      'USDCNH',
      'USDJPY',
      'USDRUB',
      'USDSEK'
    ].obs;

    final TextEditingController searchController1 = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              getVerticalSpace(6.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/images/menu.svg'),
                  Text(
                    'Quotes',
                    style: CustomTextStyle.headingStyle,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const MenuItemScreen());
                    },
                    child: SvgPicture.asset('assets/images/edit.svg'),
                  ),
                ],
              ),
              getVerticalSpace(2.h),
              customTextFormField(
                searchController1,
                'Enter symbol for search',
                isObsecure: false,
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColors.hintIconColor,
                ),
              ),
              getVerticalSpace(1.h),
              Flexible(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: symbolList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: .7.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '+94 0.09%',
                            style: CustomTextStyle.regularStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                symbolList[index],
                                style: CustomTextStyle.subHeadingStyle,
                              ),
                              const Expanded(child: SizedBox()),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: '1.06',
                                    style: CustomTextStyle.regularStyle
                                        .copyWith(
                                            color: index == 3 ||
                                                    index == 4 ||
                                                    index == 6
                                                ? AppColors.primaryRedColor
                                                : AppColors.primaryBlueColor,
                                            fontSize: 14.px)),
                                TextSpan(
                                    text: '91',
                                    style: CustomTextStyle.subHeadingStyle
                                        .copyWith(
                                            color: index == 3 ||
                                                    index == 4 ||
                                                    index == 6
                                                ? AppColors.primaryRedColor
                                                : AppColors.primaryBlueColor)),
                                TextSpan(
                                    text: '7',
                                    style: CustomTextStyle.subHeadingStyle
                                        .copyWith(
                                            color: index == 3 ||
                                                    index == 4 ||
                                                    index == 6
                                                ? AppColors.primaryRedColor
                                                : AppColors.primaryBlueColor,
                                            fontSize: 10.px)),
                              ])),
                              getHorizentalSpace(2.h),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: '1.06',
                                    style: CustomTextStyle.regularStyle
                                        .copyWith(
                                            color: index == 3 ||
                                                    index == 4 ||
                                                    index == 6
                                                ? AppColors.primaryRedColor
                                                : AppColors.primaryBlueColor,
                                            fontSize: 14.px)),
                                TextSpan(
                                    text: '91',
                                    style: CustomTextStyle.subHeadingStyle
                                        .copyWith(
                                            color: index == 3 ||
                                                    index == 4 ||
                                                    index == 6
                                                ? AppColors.primaryRedColor
                                                : AppColors.primaryBlueColor)),
                                TextSpan(
                                    text: '7',
                                    style: CustomTextStyle.subHeadingStyle
                                        .copyWith(
                                            color: index == 3 ||
                                                    index == 4 ||
                                                    index == 6
                                                ? AppColors.primaryRedColor
                                                : AppColors.primaryBlueColor,
                                            fontSize: 12.px)),
                              ])),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '15:10:33',
                                    style: CustomTextStyle.regularStyle,
                                  ),
                                  getHorizentalSpace(.4.h),
                                  SvgPicture.asset('assets/images/symbol2.svg'),
                                  getHorizentalSpace(.4.h),
                                  Text(
                                    '3',
                                    style: CustomTextStyle.subHeadingStyle,
                                  )
                                ],
                              ),
                              const Expanded(child: SizedBox()),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: ' L: ',
                                    style: CustomTextStyle.regularStyle
                                        .copyWith(fontSize: 10.px)),
                                TextSpan(
                                    text: '1.06494',
                                    style: CustomTextStyle.regularStyle
                                        .copyWith(fontSize: 10.px)),
                              ])),
                              getHorizentalSpace(2.h),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: ' H: ',
                                    style: CustomTextStyle.regularStyle
                                        .copyWith(fontSize: 10.px)),
                                TextSpan(
                                    text: '1.06494',
                                    style: CustomTextStyle.regularStyle
                                        .copyWith(fontSize: 10.px)),
                              ])),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
