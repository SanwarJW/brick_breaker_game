import 'package:flutter/material.dart';

class PlayerBrick extends StatelessWidget {
  final double playerBrickX;
  final double playerWidth;
  const PlayerBrick(
      {super.key, required this.playerBrickX, required this.playerWidth});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;

    debugPrint('$width');
    return Container(
      alignment: Alignment(((2 * playerBrickX)) / (2 - playerWidth), 0.9),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.amberAccent,
          height: 18,
          width: width * playerWidth / 2,
        ),
      ),
    );
  }
}
