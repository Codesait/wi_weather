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
  bool isExpanded = false;
  bool showHour = false;

  final _modalController = ModalController();

  void toggle() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => toggle(),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: isExpanded ? _modalController.modalFullHeight / 2 : 70,
        width: fullWidth,
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.grey,
            width: 0.2,
          ),
        ),
        //  alignment: Alignment.center,
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
            isExpanded
                ? const Divider(
                    color: AppColors.black,
                  )
                : const SizedBox(),

            //* hourly prediction list
            isExpanded
                ? Expanded(
                    child: SizedBox(
                      //  padding: const EdgeInsets.symmetric(vertical: 10),
                      child: HourlyPredictions(
                        hourlyPredictions: widget.hourlyPredictions,
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
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
      padding: const EdgeInsets.only(bottom: 60),
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
