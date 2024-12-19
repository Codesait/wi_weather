import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:wi_weather_app/presentation/features/home/viewmodel/set_day_provider.dart';
import 'package:wi_weather_app/res/constants/app_colors.dart';
import 'package:wi_weather_app/src/model.dart';
import 'package:wi_weather_app/src/utils.dart';

class HourlyTempChart extends ConsumerWidget {
  const HourlyTempChart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDay = ref.watch(dayPickerViewModel).selectedDay;

    return SfCartesianChart(
      trackballBehavior: TrackballBehavior(
        enable: true,
        activationMode: ActivationMode.singleTap,
        tooltipSettings: const InteractiveTooltip(
          color: AppColors.black,
          textStyle: TextStyle(
            color: AppColors.white,
            fontSize: 12,
          ),
          format: 'point.yC',
        ),
      ),
      
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
          size: 0,
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
      series: <AreaSeries<Hour, String>>[
        AreaSeries<Hour, String>(
          dataSource: selectedDay?.hour,
          xValueMapper: (Hour data, _) =>
              UtilFunctions.formatDate(date: data.time, pattern: 'ha'),
          yValueMapper: (Hour data, _) => data.temp_c.round(),
          // sortingOrder: SortingOrder.none,
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
