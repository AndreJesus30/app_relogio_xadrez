import 'package:app_relogio_xadrez/components/bar_timer.dart';
import 'package:app_relogio_xadrez/store/timer-chess-store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../components/display_timer.dart';
import '../components/menu_timer.dart';
import '../components/toggle_timer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final store = Provider.of<TimerChess>(context);

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: MenuTimer(
              play: store.iniciar,
              pause: store.parar,
            ),
          ),
          SizedBox(
            height: screenHeight - 44,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ToggleTimer(
                    ativo: true,
                  ),
                ),
                TimerDisplay(rotacaoBar: 0),
                TimerDisplay(rotacaoBar: 2),
                Expanded(
                  child: ToggleTimer(
                    ativo: false,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
