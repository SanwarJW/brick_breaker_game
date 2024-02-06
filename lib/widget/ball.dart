// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Ball extends StatelessWidget {
  final double ballX;
  final double ballY;
  const Ball({
    Key? key,
    required this.ballX,
    required this.ballY,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(ballX, ballY),
      child: Container(
        height: 20,
        width: 20,
        decoration: const BoxDecoration(
            color: Colors.amberAccent, shape: BoxShape.circle),
        //create a button
      ),
    );
  }
}
