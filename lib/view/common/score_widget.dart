import 'package:flappy/controller/const/style.dart';
import 'package:flutter/material.dart';

class ScoreBoardWidget extends StatelessWidget {
  const ScoreBoardWidget({
    Key? key,
    required this.title,
    required this.score,
  }) : super(key: key);

  final String title;
  final int score;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: textStyle,
        ),
        Text(
          score.toString(),
          style: const TextStyle(color: Colors.white, fontSize: 35),
        )
      ],
    );
  }
}
