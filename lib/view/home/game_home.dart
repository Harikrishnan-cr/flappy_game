import 'dart:developer';

import 'package:flappy/controller/bird_movment_controller.dart';
import 'package:flappy/controller/const/style.dart';
import 'package:flappy/view/common/barriers.dart';
import 'package:flappy/view/common/flapy_image.dart';
import 'package:flappy/view/common/score_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameHomeScreen extends StatelessWidget {
  GameHomeScreen({Key? key}) : super(key: key);
  final birdController = Get.put(BirdMovmentController());
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    log('${height * 0.2}');
    return Scaffold(body: Obx(() {
      return Column(
        children: [
          Expanded(
              flex: 2,
              child: Stack(
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
                    child: birdController.isGameStarted.value
                        ? const Text('')
                        : Text(
                            'T A P  T O  P L A Y',
                            style: textStyle,
                          ),
                  ),

//------------------one-----------------------
                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier1.value,
                      barierBottomAlign: 1.07,
                      barierHeight: height * 0.2),
                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier1.value,
                      barierBottomAlign: -1.07,
                      barierHeight: height * 0.2),

                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier2.value,
                      barierBottomAlign: 1.07,
                      barierHeight: height * 0.2),
                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier2.value,
                      barierBottomAlign: -1.07,
                      barierHeight: height * 0.2),

                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier3.value,
                      barierBottomAlign: 1.07,
                      barierHeight: height * 0.2),
                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier3.value,
                      barierBottomAlign: -1.07,
                      barierHeight: height * 0.2),

                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier4.value,
                      barierBottomAlign: 1.07,
                      barierHeight: height * 0.2),
                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier4.value,
                      barierBottomAlign: -1.07,
                      barierHeight: height * 0.2),

                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier5.value,
                      barierBottomAlign: 1.07,
                      barierHeight: height * 0.2),
                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier5.value,
                      barierBottomAlign: -1.07,
                      barierHeight: height * 0.2),

                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier6.value,
                      barierBottomAlign: 1.07,
                      barierHeight: height * 0.2),
                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier6.value,
                      barierBottomAlign: -1.07,
                      barierHeight: height * 0.2),

                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier7.value,
                      barierBottomAlign: 1.07,
                      barierHeight: height * 0.2),
                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier7.value,
                      barierBottomAlign: -1.07,
                      barierHeight: height * 0.2),

                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier8.value,
                      barierBottomAlign: 1.07,
                      barierHeight: height * 0.2),
                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier8.value,
                      barierBottomAlign: -1.07,
                      barierHeight: height * 0.2),

                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier9.value,
                      barierBottomAlign: 1.07,
                      barierHeight: height * 0.2),
                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier9.value,
                      barierBottomAlign: -1.07,
                      barierHeight: height * 0.2),

                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier10.value,
                      barierBottomAlign: 1.07,
                      barierHeight: height * 0.2),
                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier10.value,
                      barierBottomAlign: -1.07,
                      barierHeight: height * 0.2),

                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier11.value,
                      barierBottomAlign: 1.07,
                      barierHeight: height * 0.2),
                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier11.value,
                      barierBottomAlign: -1.07,
                      barierHeight: height * 0.2),

                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier12.value,
                      barierBottomAlign: 1.07,
                      barierHeight: height * 0.2),
                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier12.value,
                      barierBottomAlign: -1.07,
                      barierHeight: height * 0.2),

                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier13.value,
                      barierBottomAlign: 1.07,
                      barierHeight: height * 0.2),
                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier13.value,
                      barierBottomAlign: -1.07,
                      barierHeight: height * 0.2),

                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier14.value,
                      barierBottomAlign: 1.07,
                      barierHeight: height * 0.2),
                  BarrierTiles(
                      milliseconds: 0,
                      barierAlignmentHorizontal: birdController.barrier14.value,
                      barierBottomAlign: -1.07,
                      barierHeight: height * 0.2),
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
                children: const [
                  ScoreBoardWidget(title: 'SCORE', score: 0),
                  ScoreBoardWidget(title: 'BEST', score: 10),
                ],
              ),
            ),
          )),
        ],
      );
    }));
  }
}

class BarrierTiles extends StatelessWidget {
  const BarrierTiles({
    Key? key,
    required this.milliseconds,
    required this.barierAlignmentHorizontal,
    required this.barierBottomAlign,
    required this.barierHeight,
  }) : super(key: key);

  final int milliseconds;
  final double barierAlignmentHorizontal;
  final double barierBottomAlign;
  final double barierHeight;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: milliseconds),
      alignment: Alignment(barierAlignmentHorizontal, barierBottomAlign),
      child: BarierWidget(height: barierHeight),
    );
  }
}
