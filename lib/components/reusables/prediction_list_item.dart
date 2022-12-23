import 'package:flutter/material.dart';
import 'package:wi_weather_app/src/components.dart';
import 'package:wi_weather_app/src/model.dart';
import 'package:wi_weather_app/src/res.dart';
import 'package:wi_weather_app/src/utils.dart';

class PredictionListItem extends StatefulWidget {
  const PredictionListItem(
      {super.key,
      required this.weekDay,
      required this.temp,
      required this.condition,
      required this.hourlyPredictions});
  final String weekDay;
  final String temp;
  final String condition;
  final List<Hour> hourlyPredictions;

  @override
  State<PredictionListItem> createState() => _PredictionListItemState();
}

class _PredictionListItemState extends State<PredictionListItem> {
  final _modalController = ModalController();

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: _modalController.modalFullHeight,
      width: fullWidth,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.grey,
          width: 0.2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Day of the week
                Expanded(
                  flex: 2,
                  child: Text(
                    widget.weekDay,
                    style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                    ),
                  ),
                ),

                // temperature value
                Expanded(
                  child: Text(
                    widget.temp.inDegree,
                    style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                    ),
                  ),
                ),

                // weather state
                Expanded(
                  child: Text(
                    widget.condition,
                    style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),

          //* divider widget
          const Divider(
            color: AppColors.black,
          ),

          //* hourly prediction list
          Expanded(
            child: SizedBox(
              child: HourlyPredictions(
                hourlyPredictions: widget.hourlyPredictions,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HourlyPredictions extends StatelessWidget {
  const HourlyPredictions({
    super.key,
    required this.hourlyPredictions,
  });
  final List<Hour> hourlyPredictions;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: hourlyPredictions.length,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final hour = hourlyPredictions[index];
        return HourlyPredictionItem(
          hour: hour,
        );
      },
    );
  }
}
