import 'package:flutter/material.dart';

class CenteredImage extends StatelessWidget {
  final String imagePath;

  const CenteredImage({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
       Center(
        child: Image(image:AssetImage( imagePath,),width: 340,height: 340,
       
        ),
      );
  }
}
