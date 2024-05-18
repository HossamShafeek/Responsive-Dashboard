import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_Colors.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {

  int activeIndex= -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1,
        child: PieChart(getPieChartData()));
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        touchCallback: (p0, pieTouchResponse) {
          activeIndex = pieTouchResponse!.touchedSection!.touchedSectionIndex;
          setState(() {

          });
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          value: 40,
          radius: activeIndex==0?25:20,
          color: AppColors.indigoAccent,
        ),
        PieChartSectionData(
          showTitle: false,
          value: 25,
          radius: activeIndex==1?25:20,
          color: AppColors.blue,
        ),
        PieChartSectionData(
          showTitle: false,
          value: 22,
          radius: activeIndex==2?25:20,
          color: AppColors.indigo,
        ),
        PieChartSectionData(
          showTitle: false,
          value: 22,
          radius: activeIndex==3?25:20,
          color: AppColors.grey300,
        ),
      ],
    );
  }
}
