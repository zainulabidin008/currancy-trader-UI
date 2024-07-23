import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../controller/utils/app_colors.dart';
import '../../controller/utils/app_text_styles.dart';
import '../components/customwidgets.dart';

class QuotesThreeScreen extends StatelessWidget {
  QuotesThreeScreen({super.key});

  final TextEditingController controller = TextEditingController();

  RxList<MyItem> items = <MyItem>[
    MyItem('EURUSD', false),
    MyItem('AUDUSD', false),
    MyItem('GBPUSD', false),
    MyItem('NZDUSD', false),
    MyItem('USDCAD', false),
    MyItem('USDCHF', false),
    MyItem('USDCNH', false),
    MyItem('USDJPY', false),
    MyItem('USDJPY', false),
    MyItem('USDRUB', false),
    MyItem('USDSEK', false),
  ].obs;

  @override
  Widget build(BuildContext context) {
    RxBool hasSelected = false.obs;
    for (var item in items) {
      if (item.isSelected) {
        hasSelected = true.obs;
        break;
      }
    }
    log('message');

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
                      child: SvgPicture.asset('assets/images/greymenu.svg'),
                    ),
                    getHorizentalSpace(Get.width / 3.3),
                    Text(
                      'Quotes',
                      style: CustomTextStyle.subHeadingStyle,
                    ),
                    Spacer(),
                    hasSelected.value
                        ? GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset('assets/icons/delete.svg'),
                          )
                        : SizedBox(),
                    getHorizentalSpace(0.5.h),
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset('assets/images/filtericon.svg'),
                    ),
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
                Obx(
                  () => ListView.builder(
                    shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: GestureDetector(
                          onTap: () {
                            item.isSelected = !item.isSelected;
                            items.refresh();
                          },
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 9,
                                backgroundColor: item.isSelected
                                    ? AppColors.primaryBlueColor
                                    : AppColors.hintColor,
                                child: CircleAvatar(
                                  radius: 7,
                                  backgroundColor: item.isSelected
                                      ? AppColors.primaryBlueColor
                                      : AppColors.bottomBarColor,
                                  child: item.isSelected
                                      ? Icon(Icons.check,
                                          color: Colors.white, size: 14.0)
                                      : SizedBox.shrink(),
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                item.name,
                                style: GoogleFonts.roboto(
                                  color: AppColors.white,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Spacer(),
                              SvgPicture.asset('assets/images/greymenu.svg'),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyItem {
  String name;
  bool isSelected;

  MyItem(this.name, this.isSelected);
}
