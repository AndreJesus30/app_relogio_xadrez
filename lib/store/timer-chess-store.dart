// ignore_for_file: file_names

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'timer-chess-store.g.dart';

class TimerChess = _TimerChess with _$TimerChess;

abstract class _TimerChess with Store {
  @observable
  bool iniciado = false;

  @observable
  int minutos = 2;

  @observable
  int segundos = 0;

  @observable
  double widthBarTimer = 200;

  @observable
  double? widthBarTimerDynamic;

  Timer? cronometro;

  @action
  void iniciar() {
    iniciado = true;
    cronometro = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (minutos == 0 && segundos == 0) {
          debugPrint("fim do jogo");
          cronometro?.cancel();
        } else if (segundos == 0) {
          segundos = 59;
          minutos--;
        } else {
          segundos--;
        }
        // debugPrint(timer.tick.toString());
        decrementBar(timer);
      },
    );
  }

  @action
  parar() {
    iniciado = false;
    cronometro?.cancel();
  }

  @action
  reiniciar() {
    parar();
    iniciar();
  }

  @action
  decrementBar(Timer timer) {
    int tempoEmSegundos = 120;
    int tempoEmSegundosDecrementado = tempoEmSegundos - timer.tick;

    if (tempoEmSegundosDecrementado >= 0) {
      widthBarTimerDynamic =
          widthBarTimer * (tempoEmSegundosDecrementado / tempoEmSegundos);
      debugPrint("$widthBarTimerDynamic");
    }
  }
}
