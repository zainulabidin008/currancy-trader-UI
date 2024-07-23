import 'package:currencytrader/controller/utils/app_colors.dart';
import 'package:currencytrader/controller/utils/app_text_styles.dart';
import 'package:currencytrader/view/components/customwidgets.dart';
import 'package:currencytrader/view/screens/BottomBar_Screens/add_IndicatorScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class IndicatorScreen extends StatelessWidget {
  const IndicatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(
      backgroundColor: AppColors.secondaryColor,
      centerTitle: true,
      leading:     GestureDetector(onTap: (){
        Get.back();
      },
          child: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,size: 2.4.h,)),

        title: Text(
          'Indicators',
          style: CustomTextStyle.headingStyle,
        ) ,
    ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getVerticalSpace(2.h),
        GestureDetector(onTap: () {
          Get.to(()=>const AddIndicatorScreen());
        },
          child: Container(padding: EdgeInsets.symmetric(horizontal: 2.5.h),
            color: const Color(0xff191C21),
            height: 6.9.h,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Main Window',style: CustomTextStyle.headingStyle.copyWith(color: AppColors.primaryBlueColor),)
           ,SvgPicture.asset('assets/images/add1.svg')
            ],),
          ),
        ),
        getVerticalSpace(1.h),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 3.h),
          child: Text('To add an indicator tap window title',style: CustomTextStyle.regularStyle,),
        )

      ],
    ),);
  }
}
