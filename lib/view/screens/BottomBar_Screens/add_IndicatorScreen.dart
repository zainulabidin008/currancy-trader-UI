import 'package:currencytrader/controller/utils/app_colors.dart';
import 'package:currencytrader/controller/utils/app_text_styles.dart';
import 'package:currencytrader/view/components/customwidgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AddIndicatorScreen extends StatelessWidget {
  const AddIndicatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RxList<String> titleList = <String>[
      'Average Directional Movement Index',
      'Bolinger Bands',
      'Envelopes',
      'Ichimoku Kinko Hyo',
      'Moving Average',
      'Parabolic SAR',
      'Standard Deviation'
    ].obs;
    RxList<String> titleList1 = <String>[
      'Average True Range',
      'Bears power',
      'Bulls Power',
      'Commodity Channel Index',
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
          'Add Indicators',
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
                child: Text(
                  titleList[index],
                  style: CustomTextStyle.subHeadingStyle,
                ),
              );
            },
          ),
          getVerticalSpace(2.2.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: Text(
              'OSILLATORS',
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
                child: Text(
                  titleList1[index],
                  style: CustomTextStyle.subHeadingStyle,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
