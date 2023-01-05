import 'dart:async';

import 'package:get/get.dart';

class BirdMovmentController extends GetxController {
  RxDouble birdYaxisMovemnet = 0.0.obs;
  double time = 0.0;
  double heightData = 0.0;
  double initialHeight = 0.0;
  RxBool isGameStarted = false.obs;
  RxDouble barrier1 = 0.0.obs;
  RxDouble barrier2 = 1.5.obs;
  RxDouble barrier3 = 2.5.obs;
  RxDouble barrier4 = 3.5.obs;
  RxDouble barrier5 = 4.5.obs;
  RxDouble barrier6 = 5.5.obs;
  RxDouble barrier7 = 6.5.obs;
  RxDouble barrier8 = 7.5.obs;
  RxDouble barrier9 = 8.5.obs;
  RxDouble barrier10 = 9.5.obs;
  RxDouble barrier11 = 10.5.obs;
  RxDouble barrier12 = 11.5.obs;
  RxDouble barrier13 = 12.5.obs;
  RxDouble barrier14 = 13.5.obs;
  RxDouble barrier15 = 14.5.obs;
  RxDouble barrier16 = 15.5.obs;
  RxDouble barrier17 = 16.5.obs;
  RxDouble barrier18 = 17.5.obs;
  RxDouble barrier19 = 18.5.obs;
  RxDouble barrier20 = 19.5.obs;
  RxDouble barrier21 = 20.5.obs;
  RxDouble barrier22 = 21.5.obs;

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
      barrier1.value -= 0.3;
      barrier2.value -= 0.3;
      barrier3.value -= 0.3;
      barrier4.value -= 0.3;
      barrier5.value -= 0.3;
      barrier6.value -= 0.3;
      barrier7.value -= 0.3;
      barrier8.value -= 0.3;
      barrier9.value -= 0.3;
      barrier10.value -= 0.3;
      barrier11.value -= 0.3;
      barrier12.value -= 0.3;
      barrier13.value -= 0.3;
      barrier14.value -= 0.3;
      barrier15.value -= 0.3;
      barrier16.value -= 0.3;
      barrier17.value -= 0.3;
      barrier18.value -= 0.3;
      barrier19.value -= 0.3;
      barrier20.value -= 0.3;
      barrier21.value -= 0.3;
      barrier22.value -= 0.3;
      if (birdYaxisMovemnet > 1) {
        timer.cancel();
        isGameStarted.value = false;
      }
    });
  }
}
