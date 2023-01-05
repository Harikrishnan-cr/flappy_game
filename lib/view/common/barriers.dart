import 'package:flutter/material.dart';

class BarierWidget extends StatelessWidget {
  const BarierWidget({Key? key, required this.height}) : super(key: key);
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: height,
      decoration: BoxDecoration(
          color: Colors.green,
          border: Border.all(
              width: 5, color: const Color.fromARGB(255, 29, 126, 33)),
          borderRadius: BorderRadius.circular(15)),
    );
  }
}
