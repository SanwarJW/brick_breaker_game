import 'dart:async';

import 'package:brick_breaker_game/widget/ball.dart';
import 'package:brick_breaker_game/widget/player_brick.dart';
import 'package:brick_breaker_game/widget/start_game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool gameStart = true;

class _HomePageState extends State<HomePage> {
  double ballX = 0;
  double ballY = 0;

  double playerBrickX = 0;
  double playerWidth = 0.3;

  startGame() {
    gameStart = false;
    Timer.periodic(const Duration(milliseconds: 10), (timer) {
      setState(() {
        ballY -= 0.01;
        print(ballY);
      });
    });
  }

  moveRight() {
    setState(() {
      if (!(playerBrickX + 0.2 + playerWidth > 1)) {
        playerBrickX += 0.2;
      }
      print(playerBrickX);
    });
  }

  moveLeft() {
    setState(() {
      if (playerBrickX != -1) {
        playerBrickX -= 0.2;
      }
      print(playerBrickX);
    });
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: FocusNode(),
      autofocus: true,
      onKey: (event) {
        if (event.isKeyPressed(LogicalKeyboardKey.arrowLeft)) {
          moveLeft();
        } else if (event.isKeyPressed(LogicalKeyboardKey.arrowRight)) {
          moveRight();
        }
      },
      child: GestureDetector(
        onTap: () {
          startGame();
        },
        child: Scaffold(
          backgroundColor: Colors.amber,
          body: Center(
            child: Stack(
              children: [
                StartGame(
                  gameStart: gameStart,
                ),
                Ball(
                  ballX: ballX,
                  ballY: ballY,
                ),
                PlayerBrick(
                    playerBrickX: playerBrickX, playerWidth: playerWidth),
                Container(
                  alignment: Alignment(playerBrickX, 0.9),
                  child: Container(
                    height: 30,
                    width: 5,
                    color: Color.fromARGB(253, 4, 4, 4),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
