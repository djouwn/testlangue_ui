import 'package:flutter/material.dart';
import 'package:test_langue_ui/colors/colors.dart';

class CenteredButton extends StatelessWidget {
  final Function navigateto;
  final Color color;
  final Color textcolor;
  final String text;
  const CenteredButton(String s, {Key? key, required this.navigateto, required this.color, required this.text, required this.textcolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 270,
        height: 60.0,
        decoration: BoxDecoration(
          color: AppColors.whiteofgradeint,
          borderRadius: BorderRadius.circular(10.0),
          
        ),
        
        child: ElevatedButton(
          onPressed: () {
           
            navigateto();
          },
          style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
          child: Text(
           text,
            style:  TextStyle(fontSize: 20.0, color: textcolor),
          ),
        ),
      ),
    );
  }
}
