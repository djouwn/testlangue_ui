import 'package:flutter/material.dart';
import 'package:test_langue_ui/widgets/centered_text.dart';

class SmallContainer extends StatelessWidget {
  final String text;
  final double size;
  final Color containercolor;
  final Color fontcolor;
  final IconData? icon;
  final FontWeight fontweight;

  const SmallContainer({
    Key? key,
    required this.text,
    required this.size,
    required this.containercolor,
    required this.fontcolor,
    this.icon, required this.fontweight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 50.0,
      width: 170.0,
      decoration: BoxDecoration(
        color: containercolor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            Icon(
              icon,
              color: fontcolor,
            ),
          SizedBox(width: icon != null ? 8.0 : 0), 
          CenteredText(
            color: fontcolor,
            text: text,
            fontsize: size, 
            fontweight: fontweight,
          ),
        ],
      ),
    );
  }
}
