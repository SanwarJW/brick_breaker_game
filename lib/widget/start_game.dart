// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class StartGame extends StatelessWidget {
  final bool gameStart;
  const StartGame({
    super.key,
    required this.gameStart,
  });

  @override
  Widget build(BuildContext context) {
    return gameStart
        ? Container(
            alignment: const Alignment(0, -0.09),
            color: Colors.red,
            child: const Text('Start Game'),
          )
        : Container();
  }
}
