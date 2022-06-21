import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

class MeetingButton extends StatelessWidget {
  final VoidCallback onPress;
  final IconData icon;
  final String text;
  const MeetingButton({Key? key, required this.onPress, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.06),
                    offset: const Offset(0, 4),
                  ),
                ]),
            width: 60,
            height: 60,
            child: Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
          ),
          const SizedBox(height: 10,),
          Text(text, style: const TextStyle(
            color: Colors.grey
          ),)
        ],
      ),
    );
  }
}
