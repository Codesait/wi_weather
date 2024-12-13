import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              height: mViewController.modalHeight(),
              padding: const EdgeInsets.only(
                top: 15,
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const _CloseModalBtn(),
                      SizedBox(
                        width: fullWidth,
                        height: mViewController.modalIsOpen
                            ? mViewController.modalHeight()! / 1.15
                            : null,
                        child: ListView(
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
          child: IconButton(
            onPressed: mViewController.tapToCloseModal,
            icon: const Icon(
              Icons.clear,
              color: AppColors.black,
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
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: Text(
                mViewController.tappedForcast.name.capitalizeFirsLetter(),
                style: theme.textTheme.displayLarge!.copyWith(
                  color: AppColors.black,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const Expanded(flex: 4, child: Gap(2)),
          ],
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
      child: const Placeholder(),
    );
  }
}

class _DaysPicker extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mViewController = ref.watch(modalController);
    final modalIsOpen = mViewController.modalIsOpen;

    return Visibility(
      child: Container(
        width: fullWidth,
        margin: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonPill(
              height: 40,
              constraints: const BoxConstraints(maxWidth: 90),
              color: (modalIsOpen ? AppColors.black : AppColors.grey)
                  .withOpacity(.2),
              textColor: modalIsOpen ? AppColors.black : null,
              text: 'TODAY',
            ),
            ButtonPill(
              height: 40,
              color: (modalIsOpen ? AppColors.black : AppColors.grey)
                  .withOpacity(.2),
              textColor: modalIsOpen ? AppColors.black : null,
              text: 'TOMORROW',
            ),
            ButtonPill(
              height: 40,
              constraints: const BoxConstraints(maxWidth: 120),
              color: (modalIsOpen ? AppColors.black : AppColors.grey)
                  .withOpacity(.2),
              textColor: modalIsOpen ? AppColors.black : null,
              text: 'DAY AFTER',
            ),
            CircleAvatar(
              backgroundColor: Colors.greenAccent.shade400,
              child: const SizedBox(
                height: 40,
                width: 40,
                child: Icon(Icons.clear),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
