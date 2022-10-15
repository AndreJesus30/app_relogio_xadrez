import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../store/timer-chess-store.dart';

class BarTimer extends StatelessWidget {
  const BarTimer({Key? key, required this.rotacaoBar}) : super(key: key);

  final int rotacaoBar;

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<TimerChess>(context);
    //final screenWidth = MediaQuery.of(context).size.width;
    // store.widthBarTimer = screenWidth / 2;
    return RotatedBox(
      quarterTurns: rotacaoBar,
      child: Stack(
        children: [
          Container(
            width: 200, //screenWidth / 2,
            height: 6,
            color: Colors.black,
            child: const Text(""),
          ),
          Container(
            height: 5,
            width: store.widthBarTimerDynamic ?? 200,
            color: Colors.lightGreen,
            child: const Text(""),
          ),
        ],
      ),
    );
  }
}
