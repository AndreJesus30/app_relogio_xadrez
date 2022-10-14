import 'package:flutter/material.dart';

class ToggleTimer extends StatelessWidget {
  const ToggleTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 5,
        onPrimary: Colors.brown,
        // shape: BeveledRectangleBorder(
        // ),
      ),
      onPressed: () {},
      child: const Text("Click"),
    );
  }
}
