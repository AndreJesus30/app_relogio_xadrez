import 'package:flutter/material.dart';

class MenuTimer extends StatelessWidget {
  const MenuTimer({Key? key, required this.play, required this.pause})
      : super(key: key);

  final double menuheight = 44;
  final double itemSize = 32;
  final Function() play;
  final Function() pause;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 94, 70, 0),
      height: menuheight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.settings,
            size: itemSize,
          ),
          Icon(
            Icons.refresh,
            size: itemSize,
          ),
          IconButton(
            onPressed: pause,
            icon: Icon(
              Icons.pause,
              size: itemSize,
            ),
          ),
          IconButton(
            onPressed: play,
            icon: Icon(
              Icons.play_arrow,
              size: itemSize,
            ),
          ),
        ],
      ),
    );
  }
}
