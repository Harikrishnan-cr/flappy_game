import 'package:flappy/controller/bird_movment_controller.dart';
import 'package:flappy/controller/const/style.dart';
import 'package:flappy/view/common/flapy_image.dart';
import 'package:flappy/view/common/score_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameHomeScreen extends StatelessWidget {
  GameHomeScreen({Key? key}) : super(key: key);
  final birdController = Get.put(BirdMovmentController());

  final title = 'Score';
  final score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Obx(() {
      return Column(
        children: [
          Expanded(
              flex: 2,
              child:Stack(
                children: [
                   GestureDetector(
                onTap: () {
                  if (birdController.isGameStarted.value) { 
                    birdController.onBirdTap();
                  } else {
                    birdController.onBirdPositionChanged();
                  }
                },
                child: AnimatedContainer(
                  alignment:
                      Alignment(0, birdController.birdYaxisMovemnet.value),
                  duration: const Duration(microseconds: 0),
                  color: Colors.blue,
                  child: const FlappyImageWidget(),
                ),
              ),
              Container(
                alignment: const Alignment(0, -0.3),
                child:birdController.isGameStarted.value ? const Text('') : Text('T A P  T O  P L A Y',style: textStyle,), 
              )
                ],
              )),
          Container(
            height: 15,
            color: Colors.green,
          ),
          Expanded(
              child: Container(
            color: Colors.brown,
            child: Padding(
              padding: const EdgeInsets.only(left: 45, right: 45, top: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ScoreBoardWidget(title: 'SCORE', score: score),
                  ScoreBoardWidget(title: 'BEST', score: score), 
                ],
              ),
            ),
          )),
        ],
      );
    }));
  }
}
