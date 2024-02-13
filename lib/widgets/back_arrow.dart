import 'package:flutter/material.dart';

class BacktoLast extends StatelessWidget {
  const BacktoLast({
    Key? key,
    required this.goback,
  }) : super(key: key);

  final Function goback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        goback(context); 
      },
      child: const Icon(Icons.arrow_back), 
    );
  }
}

void goback(BuildContext context) {
  Navigator.of(context).pop(); 
}
