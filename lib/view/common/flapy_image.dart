import 'package:flutter/cupertino.dart';

class FlappyImageWidget extends StatelessWidget {
  const FlappyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60, 
      child: Image.asset('assets/images/flapybird.png'));
  }
}
