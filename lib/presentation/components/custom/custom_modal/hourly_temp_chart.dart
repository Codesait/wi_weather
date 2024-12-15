import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:wi_weather_app/res/constants/app_colors.dart';
import 'package:wi_weather_app/utils/extension.dart';

class HourlyTempChart extends StatelessWidget {
  const HourlyTempChart({super.key});

  @override
  Widget build(BuildContext context) {
    final chartData = <TempData>[
      TempData('4pm', 32),
      TempData('7pm', 29),
      TempData('10pm', 26),
      TempData('1am', 24),
      TempData('4am', 21),
      TempData('7am', 22),
      TempData('10pm', 26),
      TempData('1pm', 29),
      TempData('3pm', 22),
    ];

    return SfCartesianChart(
      primaryXAxis: const CategoryAxis(
        majorGridLines: MajorGridLines(
          width: 1,
          color: AppColors.black,
        ), //
        minimum: 0.5, // Start from 0 on the X-axis
        maximum: 5.5,
        rangePadding: ChartRangePadding.none,
        axisLine: AxisLine(
          color: AppColors.tempColor,
          dashArray: <double>[5, 5],
        ),
        majorTickLines: MajorTickLines(
          size: 3,
          color: AppColors.black,
        ),
      ),
      primaryYAxis: NumericAxis(
        majorGridLines: const MajorGridLines(width: 0),
        minimum: 0,
        rangePadding: ChartRangePadding.none,
        axisLine: const AxisLine(
          color: AppColors.tempColor,
          dashArray: <double>[5, 5],
        ),
        labelFormat: '{value}'.inDegree,
        majorTickLines: const MajorTickLines(size: 0),
        minorTickLines: const MinorTickLines(size: 0),
      ),
      plotAreaBorderWidth: 1, // Remove the border around the plot area
      plotAreaBorderColor: AppColors.black,
      plotAreaBackgroundColor: Colors.transparent,
      series: <AreaSeries<TempData, String>>[
        AreaSeries<TempData, String>(
          dataSource: chartData,
          xValueMapper: (TempData data, _) => data.category,
          yValueMapper: (TempData data, _) => data.value,
          sortingOrder: SortingOrder.ascending,
          gradient: LinearGradient(
            colors: [
              Colors.orange.shade900,
              AppColors.tempColor,
            ],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
          ),
          borderColor: AppColors.black,
          borderWidth: 1,
        ),
      ],
    );
  }
}

class TempData {
  TempData(this.category, this.value);
  final String category;
  final double value;
}
