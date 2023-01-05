import 'dart:async';

import 'package:get/get.dart';

class BirdMovmentController extends GetxController {
  RxDouble birdYaxisMovemnet = 0.0.obs;
  double time = 0.0;
  double heightData = 0.0;
  double initialHeight = 0.0;
  RxBool isGameStarted = false.obs;

  void onBirdTap() {
    time = 0;
    initialHeight = birdYaxisMovemnet.value;
  }

  void onBirdPositionChanged() {
    isGameStarted.value = true;
    Timer.periodic(const Duration(milliseconds: 70), (timer) {
      time += 0.05;
      heightData = -4.9 * time * time + 2.8 * time;
      birdYaxisMovemnet.value = initialHeight - heightData;

      if (birdYaxisMovemnet > 1) {
        timer.cancel();
        isGameStarted.value = false;
      }
    });
  }
}
