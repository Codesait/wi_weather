import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wi_weather_app/presentation/features/home/viewmodel/home_viewmodel.dart';
import 'package:wi_weather_app/presentation/features/home/viewmodel/set_day_provider.dart';
import 'package:wi_weather_app/src/components.dart';
import 'package:wi_weather_app/src/res.dart';
import 'package:wi_weather_app/src/utils.dart';

class CustomModal extends ConsumerStatefulWidget {
  const CustomModal({super.key});

  @override
  CustomModalState createState() => CustomModalState();
}

class CustomModalState extends ConsumerState<CustomModal>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    ref.read(modalController).animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mViewController = ref.watch(modalController);

    return AnimatedBuilder(
      animation: mViewController.animationController,
      builder: (context, _) {
        return Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: GestureDetector(
            onVerticalDragEnd: mViewController.handleDragEnd,
            child: Container(
              decoration: BoxDecoration(
                color: mViewController.getModalColor(
                  theme.scaffoldBackgroundColor,
                ),
                borderRadius: mViewController.modalIsOpen
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )
                    : null,
              ),
              height: mViewController.modalHeight(),
              padding: const EdgeInsets.only(
                top: 15,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: Column(
                  children: [
                    const _CloseModalBtn(),
                    SizedBox(
                      width: fullWidth,
                      height: mViewController.modalIsOpen
                          ? mViewController.modalHeight()! / 1.1
                          : null,
                      child: Column(
                        mainAxisAlignment: mViewController.modalIsOpen
                            ? MainAxisAlignment.spaceBetween
                            : MainAxisAlignment.start,
                        children: [
                          _ForcastTitle(key: UniqueKey()),
                          _ExpandedForcastReading(key: UniqueKey()),
                          _DaysPicker(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _CloseModalBtn extends ConsumerWidget {
  const _CloseModalBtn();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mViewController = ref.watch(modalController);

    return Visibility(
      visible: mViewController.modalIsOpen,
      child: Align(
        alignment: Alignment.topRight,
        child: SizedBox(
          height: 25,
          child: Visibility(
            visible: mViewController.modalIsOpen &&
                mViewController.tappedForcast != TappedForcast.days,
            child: IconButton(
              onPressed: mViewController.tapToCloseModal,
              icon: const Icon(
                Icons.clear,
                color: AppColors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ForcastTitle extends ConsumerWidget {
  const _ForcastTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    final mViewController = ref.watch(modalController);
    return Visibility(
      visible: mViewController.modalIsOpen,
      child: Opacity(
        opacity: mViewController.animationController.value,
        child: SizedBox(
          height: 100,
          child: Row(
            children: [
              Expanded(
                flex: 6,
                child: Text(
                  (mViewController.tappedForcast == TappedForcast.days)
                      ? 'Select Day'
                      : mViewController.tappedForcast.name
                          .capitalizeFirsLetter(),
                  style: theme.textTheme.displayLarge!.copyWith(
                    color: AppColors.black,
                    fontSize: 35.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ).animate().fade().scale(),
              ),
              const Spacer(
                flex: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ExpandedForcastReading extends ConsumerWidget {
  const _ExpandedForcastReading({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mViewController = ref.watch(modalController);
    return Visibility(
      visible: mViewController.modalIsOpen,
      child: SizedBox(
        height: mViewController.modalHeight()! / 1.55,
        child: mViewController.tappedForcast != TappedForcast.days
            ? Column(
                children: [
                  ForcastReadings(
                    inDetailedMode: true,
                    selectedForcast: mViewController.tappedForcast,
                    onTepmtForcastTapped: () {
                      mViewController
                          .onWiseForcastTap(TappedForcast.temperature);
                    },
                    onRainForcastTapped: () {
                      mViewController.onWiseForcastTap(TappedForcast.rain);
                    },
                    onWindForcastTapped: () {
                      mViewController.onWiseForcastTap(TappedForcast.wind);
                    },
                  ).animate().fade(begin: 0, end: 1),
                  const Gap(10),
                  switch (mViewController.tappedForcast) {
                    TappedForcast.temperature =>
                      const Flexible(child: HourlyTempChart()),
                    TappedForcast.rain =>
                      const Flexible(child: HourlyRainChart())
                          .animate()
                          .scaleX(),
                    TappedForcast.wind =>
                      const Flexible(child: HourlyWindChart())
                          .animate()
                          .scaleY(),
                    TappedForcast.days => const SizedBox.shrink(),
                  },
                ],
              )
            : const _ExpandedDays(),
      ),
    );
  }
}

class _DaysPicker extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mViewController = ref.watch(modalController);
    final modalIsOpen = mViewController.modalIsOpen;

    final forecastDays = ref.watch(homeViewmodelProvider.notifier).forecast;
    final selectedDay = ref.watch(dayPickerViewModel).selectedDay;

    return SizedBox(
      width: fullWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 8,
            child: SizedBox(
              height: 40,
              width: fullWidth / 1.3,
              child: Visibility(
                visible: mViewController.tappedForcast != TappedForcast.days,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (con, int index) {
                    final day = forecastDays?.forecastday[index];

                    return ButtonPill(
                      height: 40,
                      color: (day?.date == selectedDay?.date)
                          ? Colors.white
                          : (modalIsOpen ? AppColors.black : AppColors.grey)
                              .withOpacity(.2),
                      textColor: modalIsOpen
                          ? AppColors.black
                          : (day == selectedDay)
                              ? AppColors.black
                              : null,
                      text: day != null
                          ? UtilFunctions.formatDate(
                              date: day.date,
                              pattern: 'EEEE',
                            ).toUpperCase()
                          : 'TEST',
                      onPressed: () {
                        ref.read(dayPickerViewModel).setSelectedDay(day!);
                      },
                    );
                  },
                  separatorBuilder: (ctx, index) => const Gap(10),
                  itemCount: 3,
                ),
              ),
            ),
          ),
          const Gap(10),
          Flexible(
            child: CircleAvatar(
              backgroundColor:
                  (mViewController.tappedForcast == TappedForcast.days)
                      ? AppColors.black.withOpacity(.2)
                      : AppColors.green,
              child: GestureDetector(
                onTap: mViewController.showOrHideDates,
                child: mViewController.tappedForcast == TappedForcast.days
                    ? const SizedBox(
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.clear,
                          color: AppColors.black,
                        ),
                      )
                    : Image.asset(
                        AppAssets.expandIconImage,
                        height: 20,
                        width: 20,
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ExpandedDays extends ConsumerWidget {
  const _ExpandedDays({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dates =
        ref.watch(homeViewmodelProvider.notifier).forecast?.forecastday;
    final selectedDay = ref.watch(dayPickerViewModel).selectedDay;
    final theme = Theme.of(context);

    return Container(
      width: fullWidth,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Wrap(
        spacing: 8,
        runSpacing: 10,
        children: dates!.map((day) {
          final isSelected = (day.date == selectedDay?.date);

          return ChoiceChip(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
            label: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  UtilFunctions.formatDate(
                    date: day.date,
                    pattern: DateTime.now().millisecondsSinceEpoch.isEven
                        ? 'E'
                        : 'EEEE',
                  ),
                  style: theme.textTheme.displayLarge!.copyWith(
                    color: (day == selectedDay)
                        ? AppColors.green
                        : AppColors.black.withOpacity(.4),
                    fontSize: 35.sp,
                  ),
                ),
                Text(
                  UtilFunctions.formatDate(
                    date: day.date,
                    pattern: 'MMM d, ' 'yyyy',
                  ),
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: (day == selectedDay)
                        ? AppColors.green
                        : AppColors.black.withOpacity(.4),
                  ),
                ),
              ],
            ),
            pressElevation: 3,
            selected: isSelected,
            selectedColor: AppColors.black.withOpacity(.8),
            backgroundColor: Colors.greenAccent.shade700.withOpacity(.9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            onSelected: (value) {
              ref.read(dayPickerViewModel).setSelectedDay(day);
              ref.read(modalController).showOrHideDates();
            },
            showCheckmark: false,
          );

        
        }).toList(),
      ),
    );
  }
}
