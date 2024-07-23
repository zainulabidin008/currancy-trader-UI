import 'dart:developer';

import 'package:currencytrader/controller/utils/app_colors.dart';
import 'package:currencytrader/controller/utils/app_text_styles.dart';
import 'package:currencytrader/view/components/customwidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MenuItemScreen extends StatelessWidget {
  const MenuItemScreen({super.key,});

  @override
  Widget build(BuildContext context,) {
    RxList<int>selectedItemList=<int>[].obs;
    RxList<String>symbolList = <String>[
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

    return  Scaffold(

      body:

         Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: Column(
            children: [
              getVerticalSpace(6.h),
              Obx(()=>
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(onTap: (){
                     Get.back();
                        },
                            child: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,size: 2.4.h,)),

                    Text(
                      'Quotes',
                      style: CustomTextStyle.headingStyle,
                    ),

                    selectedItemList.isNotEmpty?   Row(children: [
                   SvgPicture.asset('assets/images/Delete.svg'),
                   GestureDetector(onTap: (){
                   },
                       child: SvgPicture.asset('assets/images/filtericon.svg')),
                 ],):SvgPicture.asset('assets/images/filtericon.svg')
                  ],
                ),
              ),
              getVerticalSpace(2.h),

              customTextFormField(
                  searchController1, 'Enter symbol for search', isObsecure: false,
                  prefixIcon: const Icon(
                    Icons.search, color: AppColors.hintIconColor,)),
              getVerticalSpace(1.h),

              ListView.builder(padding: EdgeInsets.zero,shrinkWrap: true,
                itemCount: symbolList.length,
                itemBuilder: (context, index) {
                  return Obx(()=>
                     GestureDetector(
                      onTap: (){
                      if(!selectedItemList.contains(index)){
                        selectedItemList.add(index);
                      }else if(selectedItemList.contains(index)){
                        selectedItemList.remove(index);

                      }
                        log('itemList:${selectedItemList.length}');
                      },
                      child: Padding(
                        padding:index==0?EdgeInsets.symmetric(vertical: 1.h):  EdgeInsets.symmetric(vertical: 2.h),
                        child: Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          selectedItemList.contains(index)?SvgPicture.asset('assets/images/selecteditem.svg'): Container(height:2.4.h,width: 2.4.h,
                             decoration:  BoxDecoration(
                               color:Colors.transparent,
                               shape: BoxShape.circle,
                               border: Border.all(color: Colors.grey)

                             ),
                             ),
                            getHorizentalSpace(1.h),
                            Text(symbolList[index],style: CustomTextStyle.subHeadingStyle,),
                            const Expanded(child: SizedBox()),
                            GestureDetector(onTap: (){
                            },
                                child: SvgPicture.asset('assets/images/greymenu.svg')),
                          ],
                        ),
                      ),
                    ),
                  );

                },),



            ],
          ),
        )

      ,);
  }
}
