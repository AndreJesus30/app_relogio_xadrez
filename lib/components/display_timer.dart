import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../store/timer-chess-store.dart';
import 'bar_timer.dart';

class TimerDisplay extends StatelessWidget {
  const TimerDisplay({Key? key, required this.rotacaoBar}) : super(key: key);

  final int rotacaoBar;

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<TimerChess>(context);
    return Observer(builder: (context) {
      return Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(),
            Container(
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.grey.shade400,
              ),
              child: Center(
                child: Container(
                  margin: const EdgeInsets.all(24),
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  child: Center(
                    child: FittedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${"${store.minutos}".padLeft(2, "0")}:${"${store.segundos}".padLeft(2, "0")}",
                          style: const TextStyle(fontSize: 80),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            BarTimer(rotacaoBar: rotacaoBar),
            const Spacer(),
          ],
        ),
      );
    });
  }
}
