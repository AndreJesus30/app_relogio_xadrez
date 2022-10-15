import 'package:flutter/material.dart'; //hide BoxDecoration, BoxShadow;
// import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class ToggleTimer extends StatefulWidget {
  ToggleTimer({Key? key, required this.ativo}) : super(key: key);

  bool ativo;

  @override
  State<ToggleTimer> createState() => _ToggleTimerState();
}

class _ToggleTimerState extends State<ToggleTimer> {
  double _paddingLeft = 40.0;
  double _paddingRight = 40.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        if (_paddingLeft > 0) {
          _paddingLeft = 0.0;
          _paddingRight = 40.0;
        } else {
          _paddingLeft = 40.0;
          _paddingRight = 0.0;
        }
      }),
      child: AnimatedContainer(
        padding: EdgeInsets.only(
          left: _paddingLeft, // colocar um padding zero para ele começar
          right: _paddingRight,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
          ),
          color: const Color.fromARGB(255, 142, 106, 0).withOpacity(0.7),
        ),
        duration: const Duration(milliseconds: 100),
        child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 142, 106, 0),
              border: Border.all(
                color: const Color.fromARGB(255, 181, 152, 64),
              ),
            ),
            child: const Center(child: Text('CLICK ME'))),
      ),
    );
  }
}

/*
GestureDetector(
      onTap: () => setState(() {
        if (_paddingLeft > 0) {
          _paddingLeft = 0.0;
          _paddingRight = 40.0;
        } else {
          _paddingLeft = 40.0;
          _paddingRight = 0.0;
        }
      }),
      child: AnimatedContainer(
        padding: EdgeInsets.only(
          left: _paddingLeft,
          right: _paddingRight,
        ),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 142, 106, 0).withOpacity(0.7),
        ),
        duration: Duration(milliseconds: 100),
        child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 142, 106, 0),
              border: Border.all(
                color: Color.fromARGB(255, 181, 152, 64),
              ),
            ),
            child: Center(child: Text('CLICK ME'))),
      ),
    );
*/










//  GestureDetector(
//       onTapDown: (_) => setState(() {
//         _padding = 5.0;
//       }),
//       onTapUp: (_) => setState(() {
//         _padding = 20.0;
//       }),
//       child: AnimatedContainer(
//         padding: EdgeInsets.only(left: _padding),
//         decoration: BoxDecoration(
//           color: Colors.grey,
//         ),
//         duration: Duration(milliseconds: 100),
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             elevation: 20,
//             primary: widget.ativo
//                 ? Color.fromARGB(255, 250, 193, 48)
//                 : Color.fromARGB(255, 250, 193, 48).withOpacity(0.5),
//             shape: const RoundedRectangleBorder(),
//           ),
//           onPressed: () {
//             setState(() {
//               widget.ativo = !widget.ativo;
//             });
//           },
//           child: const Text("Click"),
//         ),
//       ),
//     );


/*

import 'package:flutter/material.dart'; //hide BoxDecoration, BoxShadow;
// import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

//inserir na class statefull
  // bool isPressed = true;


//inserir dentro do build
   // const backgroundColor = Color(0xFFE7ECEF);
    // Offset distance = isPressed ? Offset(10, 10) : Offset(8, 8); //10,10 28,28
    // double blur = isPressed ? 5.0 : 20.0;

GestureDetector(
      onTap: () => setState(() {
        isPressed = !isPressed;
      }),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
          ),
          color: backgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 50),
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: backgroundColor,
              border: Border.all(color: Color.fromARGB(255, 211, 211, 211)),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  blurRadius: blur,
                  offset: -distance,
                  color: Colors.white,
                  inset: isPressed,
                ),
                BoxShadow(
                  blurRadius: blur,
                  offset: distance,
                  color: Color(0xFFA7A9AF),
                  inset: isPressed,
                ),
              ],
            ),
          ),
        ),
      ),
    );
*/