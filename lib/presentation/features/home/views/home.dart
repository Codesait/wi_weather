import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:wi_weather_app/presentation/features/home/viewmodel/home_viewmodel.dart';
import 'package:wi_weather_app/presentation/features/home/viewmodel/set_day_provider.dart';
import 'package:wi_weather_app/src/components.dart';
import 'package:wi_weather_app/src/utils.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final viewModel = ref.read(homeViewmodelProvider.notifier);

      await viewModel.loadUserLocation();

      await ref.read(dayPickerViewModel).setSelectedDay(viewModel.selectedDay!);
    });
    super.initState();
  }

  @override
  void dispose() {
    ref.read(modalController).animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mController = ref.watch(modalController);
    final stateProvider = ref.watch(homeViewmodelProvider);
    final viewModlelProvider = ref.watch(homeViewmodelProvider.notifier);

    return Skeletonizer(
      enabled: stateProvider.isLoading,
      child: Scaffold(
        appBar: const HomeAppbarWidget(),
        body: (!stateProvider.isLoading && viewModlelProvider.location == null)
            ? ErrorPlaceholder(
                onRetryPress: viewModlelProvider.loadUserLocation,
              )
            : SafeArea(
                bottom: !mController.modalIsOpen,
                child: SizedBox(
                  height: fullHeight,
                  width: fullWidth,
                  child: Stack(
                    children: [
                      Container(
                        height: getContainerHeight,
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 65),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const WeatherDescription().animate().fade().scale(),
                            const Skeleton.keep(
                              child: ForcastIconIndicator(),
                            ),
                            ForcastReadings(
                              onTepmtForcastTapped: () {
                                mController.onWiseForcastTap(
                                  TappedForcast.temperature,
                                );
                              },
                              onRainForcastTapped: () {
                                mController
                                    .onWiseForcastTap(TappedForcast.rain);
                              },
                              onWindForcastTapped: () {
                                mController
                                    .onWiseForcastTap(TappedForcast.wind);
                              },
                            ),
                          ],
                        ),
                      ),
                      const CustomModal(),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
