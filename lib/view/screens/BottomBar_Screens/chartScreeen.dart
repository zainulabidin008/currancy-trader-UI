import 'package:currencytrader/controller/utils/app_colors.dart';
import 'package:currencytrader/controller/utils/app_text_styles.dart';
import 'package:currencytrader/view/components/customwidgets.dart';
import 'package:currencytrader/view/screens/BottomBar_Screens/addObjectScreen.dart';
import 'package:currencytrader/view/screens/BottomBar_Screens/indicator_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RxList<String> categoryList = <String>[
      'M1',
      'M5',
      'M15',
      'M30',
      'H1',
      'H4',
      'D1',
      'W1',
      'H5',
      'H15',
      'H30',
      'MIN'
    ].obs;
    RxList<String> categoryList1 = <String>[
      'M1',
      'M5',
      'M15',
      'M30',
      'M1',
      'M1',
      'M5',
      'M15',
      'M30',
      'M1',
      'M1'
    ].obs;
    RxList<String> categoryLis2 = <String>[
      'H1',
      'H5',
      'H15',
      'H30',
      'H1',
      'H1',
      'H5',
    ].obs;
    RxList<String> categoryLis3 = <String>[
      'D1',
      'W1',
      'MIN',
    ].obs;
    RxBool isMenu = false.obs;

    return Scaffold(
      body: Obx(
        () => Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getVerticalSpace(6.h),
              isMenu.value == true
                  ? SizedBox(
                      height: 3.6.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: categoryList.length > 6
                            ? 7
                            : categoryList.length, // Display only first 6 items
                        itemExtent: 6.h,
                        itemBuilder: (context, index) {
                          if (index == 6 && categoryList.length > 6) {
                            // Show '...' after the first 6 items
                            return GestureDetector(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Center(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 1.h, vertical: 1.h),
                                            height: 65.4.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.px),
                                              color: const Color(0xff191C21),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Minutes',
                                                  style: CustomTextStyle
                                                      .subHeadingStyle,
                                                ),
                                                Expanded(
                                                  child: GridView.builder(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    gridDelegate:
                                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount:
                                                          5, // Number of items per row
                                                    ),
                                                    itemCount:
                                                        categoryList1.length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Container(
                                                        margin: EdgeInsets.all(1
                                                            .h), // Adjust margin as needed
                                                        padding: EdgeInsets.all(
                                                            1.h), // Adjust padding as needed
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.0),
                                                          color: const Color(
                                                              0xff131416),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                              categoryList1[
                                                                  index],
                                                              style: CustomTextStyle
                                                                  .subHeadingStyle),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Text(
                                                  'Hours',
                                                  style: CustomTextStyle
                                                      .subHeadingStyle,
                                                ),
                                                Expanded(
                                                  child: GridView.builder(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    gridDelegate:
                                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount:
                                                          5, // Number of items per row
                                                    ),
                                                    itemCount:
                                                        categoryLis2.length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Container(
                                                        margin: EdgeInsets.all(1
                                                            .h), // Adjust margin as needed
                                                        padding: EdgeInsets.all(
                                                            1.h), // Adjust padding as needed
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.0),
                                                          color: const Color(
                                                              0xff131416),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                              categoryLis2[
                                                                  index],
                                                              style: CustomTextStyle
                                                                  .subHeadingStyle),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Text(
                                                  'Days',
                                                  style: CustomTextStyle
                                                      .subHeadingStyle,
                                                ),
                                                Expanded(
                                                  child: GridView.builder(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    gridDelegate:
                                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount:
                                                          5, // Number of items per row
                                                    ),
                                                    itemCount:
                                                        categoryLis3.length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Container(
                                                        margin: EdgeInsets.all(1
                                                            .h), // Adjust margin as needed
                                                        padding: EdgeInsets.all(
                                                            1.h), // Adjust padding as needed
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5.0),
                                                          color: const Color(
                                                              0xff131416),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                              categoryLis3[
                                                                  index],
                                                              style: CustomTextStyle
                                                                  .subHeadingStyle),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                },
                                child: Text('...',
                                    style: CustomTextStyle.headingStyle));
                          }
                          return Text(categoryList[index],
                              style: CustomTextStyle.subHeadingStyle);
                        },
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              isMenu.value = true;
                            },
                            child: SvgPicture.asset('assets/images/menu.svg')),
                        Row(
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Get.to(() => const IndicatorScreen());
                                },
                                child:
                                    SvgPicture.asset('assets/images/plus.svg')),
                            getHorizentalSpace(1.h),
                            GestureDetector(
                                onTap: () {
                                  Get.to(() => const AddObjectScreen());
                                },
                                child: SvgPicture.asset(
                                    'assets/images/symbol.svg')),
                            getHorizentalSpace(1.h),
                            SvgPicture.asset('assets/images/chemistry.svg'),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset('assets/images/crcle.svg'),
                            getHorizentalSpace(1.5.h),
                            SvgPicture.asset('assets/images/links.svg'),
                          ],
                        )
                      ],
                    ),
              getVerticalSpace(2.h),
              Text(
                'EURUSD M1',
                style: CustomTextStyle.subHeadingStyle
                    .copyWith(color: AppColors.primaryBlueColor),
              ),
              Text(
                'Euro vs US Dollar',
                style: CustomTextStyle.regularStyle,
              ),
              Expanded(
                child: SfCartesianChart(
                  title: const ChartTitle(text: 'Candlestick Chart'),
                  legend: const Legend(isVisible: false),
                  tooltipBehavior: TooltipBehavior(enable: false),
                  series: <CandleSeries<_ChartData, DateTime>>[
                    CandleSeries<_ChartData, DateTime>(
                      dataSource: <_ChartData>[
                        _ChartData(DateTime(2021, 1, 1), 100, 150, 50, 125),
                        _ChartData(DateTime(2021, 1, 2), 150, 200, 100, 175),
                        _ChartData(DateTime(2021, 1, 3), 200, 250, 150, 225),
                        _ChartData(DateTime(2021, 1, 4), 250, 300, 200, 275),
                        _ChartData(DateTime(2021, 1, 5), 200, 275, 175, 250),
                      ],
                      xValueMapper: (_ChartData data, _) => data.date,
                      lowValueMapper: (_ChartData data, _) => data.low,
                      highValueMapper: (_ChartData data, _) => data.high,
                      openValueMapper: (_ChartData data, _) => data.open,
                      closeValueMapper: (_ChartData data, _) => data.close,

                      enableSolidCandles: true, // Solid candlesticks
                      animationDuration: 1000, // Animation duration
                      dataLabelSettings: const DataLabelSettings(
                        isVisible: true, // Show data labels
                        labelAlignment: ChartDataLabelAlignment.middle,
                        textStyle: TextStyle(
                            color: AppColors.primaryBlueColor,
                            fontWeight: FontWeight.bold),
                      ),
                      enableTooltip: true, // Enable tooltip
                    )
                  ],
                  primaryXAxis: const DateTimeAxis(
                    majorGridLines: MajorGridLines(width: 0),
                    labelFormat: DateFormat.DAY, // Format X-axis labels
                    intervalType: DateTimeIntervalType.days,
                    edgeLabelPlacement: EdgeLabelPlacement.shift,
                  ),
                  primaryYAxis: const NumericAxis(
                    axisLine: AxisLine(width: 0),
                    majorTickLines: MajorTickLines(color: Colors.green),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.date, this.open, this.high, this.low, this.close);
  final DateTime date;
  final double open;
  final double high;
  final double low;
  final double close;
}
