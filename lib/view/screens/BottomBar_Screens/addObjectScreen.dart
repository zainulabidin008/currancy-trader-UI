import 'package:currencytrader/controller/utils/app_colors.dart';
import 'package:currencytrader/controller/utils/app_text_styles.dart';
import 'package:currencytrader/view/components/customwidgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AddObjectScreen extends StatelessWidget {
  const AddObjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RxList<String> titleList = <String>[
      'Vertical Line',
      'Horizontal Line',
      'trendline',
      'Trend By Angle',
      'Cycle Lines',
      'Arrowed Line',
    ].obs;
    RxList<String> titleList1 = <String>[
      'Equidistant Channel',
      'StdDev Channel',
      'Regression Channel',
      'Andrews pitchfork',
      'DeMaker',
    ].obs;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondaryColor,
        centerTitle: true,
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 2.4.h,
            )),
        title: Text(
          'Add Object',
          style: CustomTextStyle.headingStyle,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: Text(
              'TREND',
              style: CustomTextStyle.subHeadingStyle
                  .copyWith(color: const Color(0xff858585)),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: titleList.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.4.h),
                decoration: const BoxDecoration(
                    color: Color(0xff191C21),
                    border:
                        Border(bottom: BorderSide(color: Color(0xff6C6C6C)))),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {

                        },
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                          size: 2.4.h,
                        )),
                    getHorizentalSpace(1.h),
                    Text(
                      titleList[index],
                      style: CustomTextStyle.subHeadingStyle,
                    ),
                  ],
                ),
              );
            },
          ),
          getVerticalSpace(2.2.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: Text(
              'CHANNELS',
              style: CustomTextStyle.subHeadingStyle
                  .copyWith(color: const Color(0xff858585)),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: titleList1.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.4.h),
                decoration: const BoxDecoration(
                    color: Color(0xff191C21),
                    border:
                        Border(bottom: BorderSide(color: Color(0xff6C6C6C)))),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {

                        },
                        child: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                          size: 2.4.h,
                        )),
                    getHorizentalSpace(1.h),
                    Text(
                      titleList1[index],
                      style: CustomTextStyle.subHeadingStyle,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
