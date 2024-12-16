import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  void dispose() {
    ref.read(modalController).animationController.dispose();
    super.dispose();
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
            : const Placeholder(),
      ),
    );
  }
}

class _DaysPicker extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mViewController = ref.watch(modalController);
    final modalIsOpen = mViewController.modalIsOpen;

    return SizedBox(
      width: fullWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 8,
            child: Visibility(
              visible: mViewController.tappedForcast != TappedForcast.days,
              replacement: Container(
                alignment: Alignment.bottomRight,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ButtonPill(
                      height: 40,
                      color: (modalIsOpen ? AppColors.black : AppColors.grey)
                          .withOpacity(.2),
                      textColor: modalIsOpen ? AppColors.black : null,
                      text: 'TODAY',
                    ),
                  ),
                  const Gap(10),
                  Expanded(
                    child: ButtonPill(
                      height: 40,
                      color: (modalIsOpen ? AppColors.black : AppColors.grey)
                          .withOpacity(.2),
                      textColor: modalIsOpen ? AppColors.black : null,
                      text: 'TOMORROW',
                    ),
                  ),
                  const Gap(10),
                  Expanded(
                    child: ButtonPill(
                      height: 40,
                      color: (modalIsOpen ? AppColors.black : AppColors.grey)
                          .withOpacity(.2),
                      textColor: modalIsOpen ? AppColors.black : null,
                      text: 'DAY AFTER',
                    ),
                  ),
                ],
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
