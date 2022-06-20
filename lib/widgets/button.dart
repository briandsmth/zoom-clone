import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  const Button({Key? key, required this.text, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton(
        onPressed: onPress,
        child: Text(
          text,
          style: TextStyle(fontSize: 17),
        ),
        style: ElevatedButton.styleFrom(
            primary: buttonColor,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: const BorderSide(color: buttonColor))),
      ),
    );
  }
}
