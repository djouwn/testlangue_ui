import 'package:flutter/material.dart';

class TextInputCustom extends StatelessWidget {
  final String hinttext;
  final IconData icon;
final Color coloricon;
final TextEditingController controller;
final bool obscureText;
  const TextInputCustom({
    Key? key,
    required this.hinttext,
    required this.icon, required this.coloricon, required this.controller, required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
     autovalidateMode:AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hinttext,
 
        prefixIcon: Icon(icon,color: coloricon,),
      ),
      obscureText: obscureText,
         validator: (value) {
    if (value == null || value.isEmpty  && hinttext=="Email" &&value.contains('gmail.com')||value.contains('outlook.com')) {
      return 'Please enter your email';
    }else {
      if (value.isEmpty&& hinttext=="Name"&&value.length<4 ){
return 'Please enter your name'; 
      }else {
      if (value.isEmpty && hinttext=="Password"&&value.length<8 ){
return 'Please enter your password'; 
      }
        if (value.isEmpty  &&hinttext=="ConfirmPassword"&&value.length<8 ){
return 'Please enter your password'; 
      }
    }

    }
    return null;
  },
    );
  }
}
