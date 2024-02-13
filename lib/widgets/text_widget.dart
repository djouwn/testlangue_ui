import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  const MyTextWidget({Key? key, required this.text, required this.size, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0), 
          child: Text(
            text,
            style:  TextStyle(
              fontSize: size,
              fontWeight: FontWeight.w400,
              color:color,
              fontFamily: 'Raleway',
            ),
          ),
        ),
       
      ],
    );
  }
}
