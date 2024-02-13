import 'package:flutter/material.dart';

class CenteredText extends StatelessWidget {
  final String text;
  final Color color;
final double fontsize;
final FontWeight fontweight;
  const CenteredText({Key? key, required this.text, required this.color, required this.fontsize, required this.fontweight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          color:color,
          fontWeight: fontweight,
          fontSize: fontsize,
        ),
      ),
    );
  }
}
