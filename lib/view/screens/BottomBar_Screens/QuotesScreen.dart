import 'package:currencytrader/controller/utils/app_colors.dart';
import 'package:currencytrader/controller/utils/app_text_styles.dart';
import 'package:currencytrader/view/components/customwidgets.dart';
import 'package:currencytrader/view/screens/BottomBar_Screens/column_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../quotes_two.dart';

class QuotesScreen extends StatelessWidget {
  const QuotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isColumnOpen = false.obs;
    RxBool isEditMenu = false.obs;
    final TextEditingController searchController = TextEditingController();
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
    RxList<double> bidList = <double>[
      1.06917,
      1.06917,
      1.06917,
      1.06917,
      1.06917,
      1.06917,
      1.06917,
      1.06917,
      1.06917
    ].obs;
    RxList<double> askList = <double>[
      1.06920,
      1.06920,
      1.06920,
      1.06920,
      1.06920,
      1.06920,
      1.06920,
      1.06920,
      1.06920
    ].obs;
    RxList<String> symbolList1 = <String>[
      'Bid',
      'Ask',
      "Day %",
      'Bid Hgh',
    ].obs;
    RxList<String> symbolList2 = <String>[
      'Bid Low',
      'Ask High',
      "Ask High",
      'last',
      'last High',
      'Last Low',
      'Time',
      'Spread',
    ].obs;

    final TextEditingController searchController1 = TextEditingController();
    RxList<String> dayPercent = <String>[
      '-0.25%',
      '0.25%',
      '0.25%',
      '0.25%',
      '0.25%',
      '-0.25%',
      '0.25%',
      '0.25%',
      '0.25%'
    ].obs;
    return Obx(
      () => Scaffold(
        body: isColumnOpen.value == true
            ? isEditMenu.value == true
                ? const EditMenuScreen()
                : Scaffold(
                    appBar: AppBar(
                      backgroundColor: AppColors.secondaryColor,
                      centerTitle: true,
                      leading: GestureDetector(
                          onTap: () {
                            isColumnOpen.value = false;
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.white,
                            size: 2.4.h,
                          )),
                      title: Text(
                        'Columns',
                        style: CustomTextStyle.headingStyle,
                      ),
                    ),
                    body: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.h),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            getVerticalSpace(1.h),
                            customTextFormField(
                                searchController1, 'Enter symbol for search',
                                isObsecure: false,
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: AppColors.hintIconColor,
                                )),
                            getVerticalSpace(2.h),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 1.h, vertical: 1.5.h),
                              decoration: const BoxDecoration(
                                color: Color(0xff191C21),
                              ),
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                itemCount: symbolList1.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: .7.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/images/minus.svg'),
                                        getHorizentalSpace(.8.h),
                                        Text(
                                          symbolList1[index],
                                          style:
                                              CustomTextStyle.subHeadingStyle,
                                        ),
                                        const Expanded(child: SizedBox()),
                                        GestureDetector(
                                            onTap: () {
                                              isEditMenu.value = true;
                                            },
                                            child: SvgPicture.asset(
                                                'assets/images/greymenu.svg')),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            getVerticalSpace(2.h),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 1.h, vertical: 1.5.h),
                              decoration: const BoxDecoration(
                                color: Color(0xff191C21),
                              ),
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                itemCount: symbolList2.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: .7.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/images/Add.svg'),
                                        getHorizentalSpace(.8.h),
                                        Text(
                                          symbolList2[index],
                                          style:
                                              CustomTextStyle.subHeadingStyle,
                                        ),
                                        const Expanded(child: SizedBox()),
                                        GestureDetector(
                                            onTap: () {
                                              isEditMenu.value = true;
                                            },
                                            child: SvgPicture.asset(
                                                'assets/images/greymenu.svg')),
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
                  )
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: Column(
                  children: [
                    getVerticalSpace(6.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Get.to(() => Quote2Screen());
                            },
                            child: SvgPicture.asset('assets/images/menu.svg')),
                        Text(
                          'Quotes',
                          style: CustomTextStyle.headingStyle,
                        ),
                        GestureDetector(
                            onTap: () {
                              isColumnOpen.value = true;
                            },
                            child:
                                SvgPicture.asset('assets/images/filter.svg')),
                      ],
                    ),
                    getVerticalSpace(2.h),
                    customTextFormField(
                        searchController, 'Enter symbol for search',
                        isObsecure: false,
                        prefixIcon: const Icon(
                          Icons.search,
                          color: AppColors.hintIconColor,
                        )),
                    getVerticalSpace(2.h),
                    ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: symbolList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 1.h, vertical: .4.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  index == 0
                                      ? Text(
                                          'Symbol',
                                          style:
                                              CustomTextStyle.subHeadingStyle,
                                        )
                                      : const SizedBox.shrink(),
                                  Text(
                                    symbolList[index],
                                    style: CustomTextStyle.subHeadingStyle,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  index == 0
                                      ? Text('Bid',
                                          style:
                                              CustomTextStyle.subHeadingStyle)
                                      : const SizedBox.shrink(),
                                  Text(
                                    "${bidList[index]}",
                                    style: CustomTextStyle.subHeadingStyle
                                        .copyWith(
                                            color: index == 1
                                                ? AppColors.primaryRedColor
                                                : index == 2 || index == 7
                                                    ? AppColors.primaryBlueColor
                                                    : AppColors.white),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  index == 0
                                      ? Text('Ask',
                                          style:
                                              CustomTextStyle.subHeadingStyle)
                                      : const SizedBox.shrink(),
                                  Text("${askList[index]}",
                                      style: CustomTextStyle.subHeadingStyle
                                          .copyWith(
                                              color: index == 0 || index == 2
                                                  ? AppColors.primaryBlueColor
                                                  : index == 4
                                                      ? AppColors
                                                          .primaryRedColor
                                                      : AppColors.white)),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  index == 0
                                      ? Text('Day %',
                                          style:
                                              CustomTextStyle.subHeadingStyle)
                                      : const SizedBox.shrink(),
                                  Text(dayPercent[index],
                                      style: CustomTextStyle.subHeadingStyle
                                          .copyWith(
                                              color: index == 0 || index == 5
                                                  ? AppColors.primaryRedColor
                                                  : index == 2 || index == 7
                                                      ? AppColors
                                                          .primaryBlueColor
                                                      : AppColors.white)),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
